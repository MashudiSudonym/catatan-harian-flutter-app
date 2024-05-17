# catatan_harian

---

## Getting Started 🚀

after clone this repo,

---

for information, i am using flutter version 3.19.6 (maybe i am not going to upgrade flutter version for this project)

you can using fvm for setup select flutter version

---

create 3 .env files for each flavor,

- assets/development/.env
- assets/staging/.env
- assets/production/.env

An example content of an .env file can be seen in this file

``` .env_example```

after that please run this command


```sh
$ flutter clean

$ flutter pub get

$ dart run build_runner build --delete-conflicting-outputs
```

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

To build appbundle 

```sh
$ flutter build appbundle --flavor production --target .\lib\main_production.dart --release
```