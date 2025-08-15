# Utilise une image Python officielle comme base
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier de dépendances
COPY requirements.txt .

# Installe les dépendances (si vous en avez)
RUN pip install --no-cache-dir -r requirements.txt

# Copie le script Python dans le conteneur
COPY code.py .

# Commande pour exécuter le script au démarrage du conteneur
CMD ["python", "app.py"]
