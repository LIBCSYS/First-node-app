
# First Dockerfile
# Convert to Docker Image by running ( in the root folder of the project )
# Docker build .
##################################################################################

# Using node as the initial base container.
FROM node 

# change the working directory in the docker container.
WORKDIR /app

# copy the package.json file to the working container
COPY package.json /app

# build the package.json file
RUN npm install

# copy the local files ( server.js ) etc. to the working directory.
COPY . /app

# Optional, expose the container ( port: 80)  When you run the image, use the -p 3000:80 option.
EXPOSE 80

# execute server.js ( localhost:3000 )
CMD ["node", "server.js"]
