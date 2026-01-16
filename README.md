1. Architecture de la chaîne CI/CD

L'architecture suit un flux logique de la machine locale vers le Cloud :

Développement & Conteneurisation (Local/Vagrant) :

Création de l'application Node.js (Port 3000).

Construction de l'image Docker via un Dockerfile.

Push de l'image sur le Docker Hub pour la rendre disponible publiquement.

Infrastructure as Code (IaC) :

Utilisation de Terraform pour provisionner automatiquement une instance EC2 sur AWS.

Configuration d'un Security Group autorisant les ports 22 (SSH) et 8080 (Application).

Déploiement (Cloud) :

Connexion SSH à l'instance via une clé privée RSA.

Installation de l'environnement de calcul (Docker) sur le serveur distant.

Récupération (Pull) et exécution du conteneur Node.js.

2. Composants Techniques

Fournisseur Cloud : AWS (Région us-east-1).

Type d'instance : t2.micro (Ubuntu 24.04 LTS).

Orchestration locale : Terraform.

Runtime : Docker.

3. Scalabilité et Haute Disponibilité

Pour faire évoluer cette architecture vers une production réelle, la solution recommandée est de prendre les étapes nécessaires pour améliorer le système et le préparer à une utilisation à grande échelle. Cela signifie que la solution recommandée consiste à travailler sur cette architecture pour la rendre plus fiable et plus efficace. La solution recommandée pour faire évoluer cette architecture est donc cruciale pour une production réelle. La solution recommandée implique de mettre en œuvre des changements et des améliorations pour que cette architecture soit prête pour une utilisation réelle.

Scaling Horizontal : Utilisation d'un Auto Scaling Group (ASG) pour ajouter/supprimer des instances selon la charge.

Répartition de charge : Mise en place d'un Application Load Balancer (ALB) pour distribuer le trafic et assurer la haute disponibilité en cas de panne d'une instance.
