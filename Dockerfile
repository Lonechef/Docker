# So first we need to give the reference image
FROM node

# So there is another way to do the FROM Basically lets say you want to prepare a Image for another Platform
# So lets say I want to make an image for mac so in that we need to mention arm over here 
# This is helpful when Development is done in different system and deployment is reqyuired in Diff system in this case this is useful     
FROM --platform=linux/arm64 node  
# Furrther we can give a name of the label so Baically whicha can be worked as rhe name of our dockweer container
LABEL app=my-node-app

#To setup a workibng directory
WORKDIR /app




# Now as we added node_modules in docker file hence now it is necessary to add npm i over here
RUN cd /app && npm install

#COPY : So this tells us to copy the current directory to the app folder in the conatiner
COPY . /app

# To expose the port when you run 

EXPOSE 3000

#Set the default executable and parameters for this executing container.
CMD ["node","app/bin/www"]

