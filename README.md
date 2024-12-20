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
```
---
### Étape 2 : Installer les dépendances
Copier le code
```bash
make init
```
---
### Étape 3 : Lancer le service
Copier le code
```bash
make run
```
---
### Étape 4 : Exécuter les tests
Copier le code
```bash
make test
```
---
### Étape 5 : Construire l'image Docker
Copier le code
```bash
make build
```
---
### Étape 6 : Déployer sur Azure
Configurez le fichier de workflow GitHub Actions et ajoutez le secret AZURE_WEBAPP_PUBLISH_PROFILE dans les paramètres de votre dépôt.
---
### Structure du projet
```
CID-Python/
├── app.py                # Application principale Flask avec les endpoints REST (BMI et BMR)
├── health_utils.py       # Fonctions utilitaires pour les calculs de BMI et BMR
├── test.py               # Tests unitaires pour valider les calculs et les endpoints
├── Dockerfile            # Fichier Docker pour conteneuriser l'application
├── Makefile              # Automatisation des tâches (installation, test, exécution, build)
├── requirements.txt      # Liste des dépendances Python nécessaires
├── .github/
│   └── workflows/
│       └── ci-cd.yml     # Workflow GitHub Actions pour la CI/CD
└── README.md             # Documentation du projet
```

### Tests
Les tests sont écrits en Python avec unittest. Ils valident la précision des calculs BMI et BMR.

Exemple :

```bash
python -m unittest discover
```
```bash
http://localhost:5000/
```

---
Ce projet a été développé par Sofl4me dans le cadre d'un exercice d'intégration de microservices Python avec CI/CD.

