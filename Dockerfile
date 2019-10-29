FROM node:latest

RUN mkdir -p /home/project
WORKDIR /home/project

RUN chmod -R 777 /home/project
COPY . /home/project

RUN npm install -g color-name --unsafe-perm=true

EXPOSE 3000

ENTRYPOINT ["npm", "run"]
CMD ["start"]