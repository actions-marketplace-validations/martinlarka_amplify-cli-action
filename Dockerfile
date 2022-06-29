FROM node:lts

RUN npm config set user 0 && \
  npm config set unsafe-perm true && \
  npm install -g @aws-amplify/cli@latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
