FROM node:18-alpine AS build
WORKDIR /usr/src/app

# Crée un utilisateur non-root
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Copie les fichiers package.json et yarn.lock
COPY --chown=appuser:appgroup package.json yarn.lock ./

# Copie le reste des fichiers de l'application
COPY --chown=appuser:appgroup . .

# Installe les dépendances de production avec yarn, y compris pm2
RUN yarn install --frozen-lockfile --production && \
    yarn global add pm2 && \
    yarn cache clean

# Définit des labels pour la métadonnée
LABEL version="1.0.0" \
      description="rabbit-receiver" \
      maintainer="OTTO cyprienotto@outlook.fr"

# Configure l'utilisateur non-root
USER appuser

CMD [ "npm", "start" ]