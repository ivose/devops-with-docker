# express app

For uploading to hub use "docker build -t ivo123/dwdp1-16:latest ." and "docker push ivo123/dwdp1-16:latest". For trying localhost is "docker run -p 8080:8080 --name container-dwdp1-16 -d ivo123/dwdp1-16" and <http://localhost:8080>.

## To a service

It can be upload to e.g DigitalOcean, it's very simple - sign in to DigitalOcean.com, in a dashboard threre click "apps" on left, click "create app", on service provider select Docker Hub, on repository write "ivo123/dwdp1-16", on "edit plan" you can reduce cost to 5$ (basic, 512mb ram), here no environment variables needed, for region select Frankfurd, look the info and finally click on "create resources". The generated example was on url <https://sea-lion-app-czmwa.ondigitalocean.app/> but i removed it after generating because for the task holding there it somehow costs, here's a picture (kuva.png) about it. Heroku, fly and render cannot to deploy because in these i've another apps of fullstack and other courses solutions and limits are full.
