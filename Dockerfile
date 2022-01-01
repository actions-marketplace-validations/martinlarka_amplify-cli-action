FROM node:14.18.2-alpine3.14

# RUN npm config set user 0 && \
#   npm config set unsafe-perm true && \
#   npm install -g @aws-amplify/cli@7.6.5

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
