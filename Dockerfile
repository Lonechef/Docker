# So first we need to give the reference image
FROM node
# Furrther we can give a name of the label so Baically whicha can be worked as rhe name of our dockweer container
LABEL app=my-node-app

#COPY : So this tells us to copy the current directory to the app folder in the conatiner
COPY . /app

#Set the default executable and parameters for this executing container.
CMD ["node","app/bin/www"]