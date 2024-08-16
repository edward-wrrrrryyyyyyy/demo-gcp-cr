from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    # 使用 0.0.0.0 將應用綁定到所有網絡介面，這對於 Docker 容器內的應用是必須的
    app.run(host='0.0.0.0', port=8080)
