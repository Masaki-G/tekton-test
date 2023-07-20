Dockerfile
# 使用するベースイメージ
FROM python:3.8-slim-buster

# ワーキングディレクトリの設定
WORKDIR /app

# 依存関係ファイルをコピー
COPY requirements.txt requirements.txt

# 依存関係のインストール
RUN pip install -r requirements.txt

# ソースコードをコピー
COPY . .

# ポートを公開
EXPOSE 5000

# アプリケーションの実行
CMD ["python", "app.py"]
