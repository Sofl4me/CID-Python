# Calculateur de Santé - Microservice avec CI/CD sur Azure

## Objectif
Ce projet consiste à développer un microservice Python utilisant Flask pour calculer des métriques de santé, notamment l'Indice de Masse Corporelle (IMC ou BMI) et le Métabolisme de Base (BMR). Ce microservice est conteneurisé avec Docker, géré via un Makefile, et déployé sur Azure grâce à une pipeline CI/CD configurée avec GitHub Actions.

---

## Fonctionnalités principales
1. **Calcul IMC (BMI)** : Calcule l'indice de masse corporelle à partir de la taille (en mètres) et du poids (en kg).
2. **Calcul BMR** : Estime le métabolisme de base en utilisant la taille (en cm), le poids (en kg), l'âge et le sexe.
3. **Conteneurisation** : Application conteneurisée avec Docker.
4. **Orchestration** : Gestion automatisée des tâches via un Makefile.
5. **CI/CD** : Tests et déploiement automatisés avec GitHub Actions.
6. **Hébergement sur Azure** : Déployé sur Azure App Service.

---

## Formules Mathématiques
### 1. Indice de Masse Corporelle (IMC)
\[
\text{IMC} = \frac{\text{poids (kg)}}{\text{taille (m)}^2}
\]

### 2. Métabolisme de Base (BMR - Formule de Harris-Benedict)
- **Pour les hommes** :
\[
\text{BMR} = 88.362 + (13.397 \times \text{poids (kg)}) + (4.799 \times \text{taille (cm)}) - (5.677 \times \text{âge (ans)})
\]
- **Pour les femmes** :
\[
\text{BMR} = 447.593 + (9.247 \times \text{poids (kg)}) + (3.098 \times \text{taille (cm)}) - (4.330 \times \text{âge (ans)})
\]

---

## Prérequis
- **Python 3.9 ou supérieur**
- **Docker**
- **GitHub Actions** configuré pour l'intégration/déploiement continu.
- **Compte Azure App Service**.

---

## Installation et Utilisation
### Étape 1 : Cloner le dépôt
```bash
git clone https://github.com/Sofl4me/CID-Python.git
cd CID-Python

Étape 2 : Installer les dépendances
bash
Copier le code
make init
Étape 3 : Lancer le service
bash
Copier le code
make run
Étape 4 : Exécuter les tests
bash
Copier le code
make test
Étape 5 : Construire l'image Docker
bash
Copier le code
make build
Étape 6 : Déployer sur Azure
Configurez le fichier de workflow GitHub Actions et ajoutez le secret AZURE_WEBAPP_PUBLISH_PROFILE dans les paramètres de votre dépôt.

Structure du projet
app.py : Contient les endpoints Flask pour calculer le BMI et le BMR.
health_utils.py : Fonctions utilitaires pour le calcul des métriques.
Dockerfile : Définit l'image Docker pour le microservice.
Makefile : Automatisation des tâches.
requirements.txt : Gestion des dépendances Python.
test.py : Tests unitaires pour les fonctions BMI et BMR.
.github/workflows/ci-cd.yml : Pipeline CI/CD pour les tests et le déploiement.
Tests
Les tests sont écrits en Python avec unittest. Ils valident la précision des calculs BMI et BMR.

Exemple :

bash
Copier le code
python -m unittest discover
Évaluation
Exactitude : Vérification des calculs de BMI et BMR.
Conteneurisation : Exécution correcte de l'application dans un conteneur Docker.
Automatisation : Fonctionnement des commandes Makefile pour toutes les étapes.
CI/CD : Pipeline GitHub Actions déployant l'application avec succès.
Documentation : Code et commentaires clairs et bien organisés.
Contributeurs
Ce projet a été développé par Sofl4me dans le cadre d'un exercice d'intégration de microservices Python avec CI/CD.

