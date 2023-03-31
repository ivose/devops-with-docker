
if [ ! -d "./example-frontend" ]; then
    cp -r ../../material-applications/example-frontend .
fi
docker build . -t frontend-project && docker run -p 5000:5000 frontend-project
