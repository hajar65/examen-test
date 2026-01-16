# Utiliser l'image officielle Node.js 18
FROM node:18-slim

# Créer le répertoire de travail
WORKDIR /app

# Copier les fichiers de configuration
COPY package*.json ./

# Installer les dépendances
RUN npm install --production

# Copier le reste du code
COPY . .

# Exposer le port de votre API
EXPOSE 3000

# Lancer l'application
CMD ["node", "index.js"]
