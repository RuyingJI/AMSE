
 TP1 - Guide de Voyage en Chine 🇨🇳

Nous avons développé une application mobile interactive permettant d’explorer la richesse culturelle, gastronomique et touristique de la Chine.

Auteur
	•	Ruying Ji

Présentation du Projet

Notre application permet aux utilisateurs de :
✅ Explorer différentes catégories de médias liés à la Chine (films, villes, cuisine, culture, séries et sports).
✅ Ajouter et retirer des éléments de leurs favoris.
✅ Naviguer entre différentes pages via une barre de navigation intuitive.
✅ Visualiser des images associées à chaque élément.

Vidéo de démonstration

• Lien vers la vidéo de démonstration (à ajouter si disponible)

Prérequis

Logiciels et outils nécessaires

• Flutter SDK (version stable)
• Android Studio (optionnel, mais recommandé pour l’émulation)
• Un émulateur Android ou un iPhone réel pour les tests

Installation des dépendances

1️⃣ Installer Flutter et Dart (si ce n’est pas encore fait)
Suivez les instructions officielles : Installer Flutter

2️⃣ Vérifier la configuration de Flutter

flutter doctor

3️⃣ Cloner le projet et installer les dépendances

• git clone https://github.com/RuyingJI/AMSE.git
• cd tp1
• flutter pub get

4️⃣ Lancer l’application sur chrome

• flutter run -d chrome

Paramètres

Il est possible de modifier certains paramètres de l’application pour personnaliser l’expérience utilisateur :
	•	 Navigation : Modifier la structure des pages et l’ordre des catégories.
	•	 Affichage des médias : Ajuster la taille des images et des textes dans les listes.
	•	 Thème de l’application : Changer les couleurs et les styles dans main.dart.

Structure du Projet

 📌 lib/ → Contient le code principal de l’application.
 📌 lib/data/ → Stocke les fichiers de données pour chaque catégorie.
 📌 lib/models/ → Définit le modèle Media.
 📌 lib/pages/ → Contient toutes les pages de l’application.
 📌 lib/widgets/ → Composants réutilisables comme les cartes média.
 📌 assets/images/ → Stocke les images utilisées dans l’application.

Lancement et Navigation

L’application est composée de 4 pages principales, accessibles via une BottomNavigationBar :

1️⃣ HomePage → Accueil de l’application.
2️⃣ MediaPage → Permet de naviguer entre les différentes catégories.
3️⃣ LikePage → Permet de naviguer entre les différentes catégories liked.
4️⃣ AboutPage → Présentation du projet et de ses auteurs.

Chaque catégorie possède une page dédiée pour afficher les éléments correspondants, avec la possibilité d’ajouter aux favoris.

Exécuter l’Application

📌 Démarrer l’application sur un appareil mobile ou un émulateur

flutter run

📌 Générer une build pour Android

flutter build apk

📌 Générer une build pour iOS (nécessite macOS)

flutter build ios

Fonctionnalités Implémentées

✅ Affichage dynamique des médias avec des images et descriptions.
✅ Ajout et suppression des favoris (films, villes, sports, etc.).
✅ Navigation fluide entre les pages grâce à Navigator.push().
✅ Personnalisation du thème et des couleurs.
✅ Optimisation pour différents formats d’écran (responsive design).


Licence

Ce projet est sous licence IMT Nord Europe.
