
if [ ! -d "./example-frontend" ]; then
    cp -r ../../material-applications/example-frontend .
fi
if [ ! -d "./example-backend" ]; then
    cp -r ../../material-applications/example-backend .
fi

#docker build . -t frontend-project && docker run -p 5000:5000 frontend-project
