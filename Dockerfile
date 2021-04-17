# use base node linux image
FROM node:alpine

# install vercel
RUN npm install -g vercel@latest

# add deployment script
ADD script.sh /bin/

# execute it on container start up
ENTRYPOINT /bin/script.sh
