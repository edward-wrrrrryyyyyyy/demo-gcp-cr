import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    """Example Hello World route with an image."""
    name = os.environ.get("NAME", "World")
    return render_template("index.html", name=name)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
