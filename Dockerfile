FROM python:3.12-alpine
WORKDIR /app
COPY index.html .
EXPOSE 5000
# Dokku injeta $PORT; o app precisa escutar nele.
CMD python3 -m http.server ${PORT:-5000}
