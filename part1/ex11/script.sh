
if [ ! -d "./spring-example-project" ]; then
    cp -r ../../material-applications/spring-example-project .
fi
docker build . -t spring-project && docker run -p 8080:8080 spring-project
