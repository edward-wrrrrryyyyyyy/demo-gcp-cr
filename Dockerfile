# FROM python:3.10-slim

# # Allow statements and log messages to immediately appear in the Knative logs
# ENV PYTHONUNBUFFERED True

# # Copy local code to the container image.
# ENV APP_HOME /app
# WORKDIR $APP_HOME
# COPY . ./

# # Install production dependencies.
# RUN pip install --no-cache-dir -r requirements.txt
# CMD ["python", "main.py"]

# 使用官方的 Python 映像作为基础映像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 到工作目录
COPY requirements.txt ./

# 安装 Python 依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制当前目录的所有内容到工作目录
COPY . ./

# 定义启动容器时要执行的指令
CMD ["python", "main.py"]
