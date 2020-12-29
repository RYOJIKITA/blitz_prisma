FROM node:14

COPY . /blitz_prisma
WORKDIR /blitz_prisma

RUN chmod +x start.sh

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["./start.sh"]
