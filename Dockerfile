FROM node:latest

RUN mkdir -p /home/project2
WORKDIR /home/project2

COPY . /home/project2

RUN npm install -g color-name --unsafe-perm=true

EXPOSE 3000

ENTRYPOINT ["npm", "run"]
CMD ["start"]