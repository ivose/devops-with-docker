
if [ ! -d "./example-backend" ]; then
    cp -r ../../material-applications/example-backend .
fi
docker build . -t backend-project && docker run -p 8080:8080 backend-project
