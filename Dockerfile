
# Including the Base image run application spring boot

FROM openjdk:17

# Who is the Author (depricated) instead of LABEL

#MAINTAINER "ASHISH"

LABEL Author="ASHISH"

# To expose conatainer port (# Expose the port the app runs on)

EXPOSE 8080

# Copy is used copy the jar file from HOST Machine to Conatiner machine  
# After building project with maven in target folder jar file will be created
# " spring-boot-mysql.jar" Directly copying in container repo were jar file will be copied 

COPY target/spring-boot-mysql.jar spring-boot-mysql.jar


# Entrypoint is nothing but act as CMD but in CMD can be overwrite and Entrypoint can't be 
# executing jar file inside the container, so executing command jar file name
# Command to run application

ENTRYPOINT ["java","-jar","/spring-boot-mysql.jar"]