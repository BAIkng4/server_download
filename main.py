import os, io, re
from flask import Flask, request, abort, jsonify, send_file
from werkzeug.utils import secure_filename
import time
from threading import Lock
from zipfile import ZipFile
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)
BASE_DIR = os.path.abspath("file_access")
temporary_urls = {}
lock = Lock()

# Load secret from environment
SECRET_API_KEY = os.environ.get("SECRET_API_KEY", "defaultsecret")

@app.route('/')
def main():
    return '<h2>GROW KING SCRIPTS</h2>', 200
    
@app.route("/get_url", methods=["POST"])
def generate_temp_url_multiple():
    auth = request.headers.get("Authorization")
    if not auth or auth != f"Bearer {SECRET_API_KEY}":
        return abort(401, "Unauthorized")

    data = request.json
    file_paths = data.get("paths", [])
    if not isinstance(file_paths, list) or not file_paths:
        return jsonify({"error": "Invalid or empty 'paths' list"}), 400

    zip_buffer = io.BytesIO()

    with ZipFile(zip_buffer, 'w') as zipf:
        for rel_path in file_paths:
            safe_path = secure_filename(os.path.basename(rel_path))
            full_path = os.path.join(BASE_DIR, rel_path)
            if not os.path.isfile(full_path):
                return jsonify({"error": f"File not found: {rel_path}"}), 404
            zipf.write(full_path, arcname=os.path.basename(full_path))

    zip_buffer.seek(0)

    with lock:
        first_file_name = os.path.basename(file_paths[0])
        base_name = os.path.splitext(first_file_name)[0]
        cleaned_name = re.sub(r"\.part\d+$", "", base_name)
        zip_name = f"{cleaned_name}.zip"
        token = str(int(time.time() * 1000))
        expiry = time.time() + 15
        
        temporary_urls[token] = {
            "file_data": zip_buffer.read(), 
            "filename": zip_name, 
            "expiry": expiry
        }

    return jsonify({"download_url": f"/download/{token}"})

@app.route("/download/<token>", methods=["GET"])
def download_file(token):
    with lock:
        data = temporary_urls.get(token)
        if not data:
            return abort(403, "Invalid or expired token")
        if time.time() > data["expiry"]:
            del temporary_urls[token]
            return abort(403, "Token expired")

        file_data = data["file_data"]
        filename = data["filename"]

    return send_file(
        io.BytesIO(file_data),
        as_attachment=True,
        download_name=filename,
        mimetype="application/zip"
    )
    
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
