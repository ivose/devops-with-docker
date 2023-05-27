# Tas 2.3

    cp .env-sample .env #if needed and set your password
    sh script.sh
    docker-compose up -d

And look [here](http://localhost:5000).
Some changes compared to the previous task. Into nginx.conf added rows:

    location /messages {
        proxy_pass http://backend:8080/messages;
    }

    location /ping {
        proxy_pass http://backend:8080/ping;
    }

    location /slow {
        proxy_pass http://backend:8080/slow;
    }

Into docker.compose.xml. backend>environment: REQUEST_ORIGIN: <http://localhost>, and frontend>enviromnent: REACT_APP_BACKEND_URL: <http://localhost:80>.
