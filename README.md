# AY test

Django test

# How to run

1. build docker image `docker build -t ay_test .`
2. run docker image `docker run -it --rm -p 8080:8080 ay_test`
3. open [http://127.0.0.1:8080/](http://127.0.0.1:8080/)
4. you can login using the username "admin" and the password "adminadmin", this can be changed if you change the ADMIN_USERNAME and ADMIN_PASSWORD environment variables the first time you execute docker run
