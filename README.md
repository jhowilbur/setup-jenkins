# Setup Jenkins ~ for reactive hello world project with Quarkus and WebFlux.
## for deploy automation with Jenkins and everything working with containerization  in Docker and orchestration with k8s.

#### This is an automation project, just as a basis to exemplify the files needed to achieve continuous integration and continuous delivery (CI / CD),
#### so that with each new commit in our applications we can have 
#### the security of testing, validating in an automated way and conclude that it is in 
#### perfect working order to be able to deliver in production, 
#### thus gaining a very valuable time to improve the business evolution even more.

#-----------------
### for running local:
#### docker build --tag wilbur-jenkins:0.1 .
### and after:
#### docker run -d --publish 8080:8080 wilbur-jenkins:0.1
#-----------------
### and access:
#### localhost:8080
#-----------------

#*****************
## see applications that have automation and their files Jenkinsfile, Dockerfile and more ...
#### git clone https://github.com/jhowilbur/webflux-from-jenkins.git
#### git clone https://github.com/jhowilbur/quarkus-from-jenkins.git
#### git clone https://github.com/jhowilbur/setup-jenkins.git
#*****************

##### ~ 🅦🅘🅛🅑🅤🅡 ~

 - Tanks for your attention!