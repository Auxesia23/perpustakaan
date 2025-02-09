# Gunakan base image Python 3.12 slim
ARG PYTHON_VERSION=3.12.3
FROM python:${PYTHON_VERSION}-slim AS base

# Environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install dependensi sistem yang dibutuhkan oleh mysqlclient
RUN apt-get update && apt-get install -y \
    gcc \
    libffi-dev \
    pkg-config \
    default-libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

# Tambahkan user non-root
ARG UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    appuser

# Salin file requirements
COPY requirements.txt .

# Install dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install --no-cache-dir -r requirements.txt

# Ganti user ke non-root
USER appuser

# Salin semua kode proyek
COPY . .

# Expose port aplikasi
EXPOSE 8000

# Jalankan aplikasi
CMD ["sh", "-c", "python manage.py migrate && python manage.py createsuperuser --no-input && python manage.py runserver 0.0.0.0:8000"]