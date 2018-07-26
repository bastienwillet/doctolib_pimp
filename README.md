# Présentation

## Créateur

Bastien Willet


## Comment lancer le programme ?

1. Positionner le terminal à la racine du dossier doctolib
2. Lancer $ bundle install
3. Lancer $ rails db:migrate
4. Lancer $ rails db:seed
5. Ouvrir db/development.sqlite3 avec un lecteur de base de données SQLite


# Fonctionnement


## Détail des migrations (voir dossier db/migrate)

- 20180726131225_create_doctors.rb : créé la table doctors et son modèle
- 20180726131230_create_patients.rb : créé la table patients et son modèle
- 20180726131237_create_appointments.rb : créé la table appointments et son modèle
- 20180726161740_create_cities.rb : créé la table cities et son modèle
- 20180726161746_create_specialties.rb : créé la table specialties et son modèle
- 20180726191608_create_join_table_doctor_specialty.rb : migration autogénérée par $ rails g migration CreateJoinTableDoctorSpecialty doctor specialty. Créée la table intermédiaire de la relation n dans n


## Gems ruby utilisées

voir Gemfile
