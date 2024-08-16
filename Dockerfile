# 使用官方的 Python 映像作為基礎映像
FROM python:3.9

# 設定工作目錄
WORKDIR /app

# 複製 requirements.txt 到工作目錄
COPY requirements.txt ./

# 安裝 Python 依賴
RUN pip install -r requirements.txt

# 複製當前目錄的所有內容到工作目錄
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./


# 定義啟動容器時要執行的指令
CMD ["python", "main.py"]
