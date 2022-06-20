FROM openjdk:17 AS minecraft

# ENV XMX=1024M
# ENV XMS=1024M
ARG FORGE_VERSION
ENV SERVER_VERSION=$FORGE_VERSION

# classic server 1.16.5
ADD https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar /usr/src/minecraft/
COPY entrypoint.sh /usr/src/minecraft/entrypoint.sh

# forge server
#COPY forge/$FORGE_VERSION/forge-$FORGE_VERSION.jar /usr/src/minecraft/server.jar
#COPY entrypoint.sh /usr/src/minecraft/entrypoint.sh

COPY eula.txt /usr/src/minecraft/eula.txt

WORKDIR /usr/src/minecraft/

EXPOSE 25565/tcp

ENTRYPOINT ["sh", "./entrypoint.sh" ]
