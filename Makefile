ifneq (,$(wildcard ./.env))
    include .env
    export
endif

OUT_DIR=~/"Downloads"
APP_NAME=delimais_customer

.PHONY: icons build build_ios build_android_aab build_android_apk upgrade clean

.default: icons

icons:
	@echo "Generating launcher icons"
	@dart run flutter_launcher_icons

build: build_ios build_android_aab

build_ios:
	@echo "Building the IOS application"
	@flutter build ipa --release --obfuscate --split-debug-info ./build/app/outputs/bundle/release/
	@cp ./build/app/outputs/bundle/release/app-release.ipa ${OUT_DIR}/${APP_NAME}.ipa

build_android_aab:
	@echo "Building the Android application"
	@flutter build appbundle --release --obfuscate --split-debug-info ./build/app/outputs/bundle/release/
	@cp ./build/app/outputs/bundle/release/app-release.aab ${OUT_DIR}/${APP_NAME}.aab

build_android_apk:
	@echo "Building the Android application"
	@flutter build apk --release --obfuscate --split-debug-info ./build/app/outputs/flutter-apk/
	@cp ./build/app/outputs/flutter-apk/app-release.apk ${OUT_DIR}/${APP_NAME}.apk

upgrade:
	@echo "Upgrading packages"
	@flutter clean
	@flutter pub get
	@flutter pub upgrade
	@flutter pub upgrade --major-versions

clean:
	@echo "Cleaning project"
	@flutter clean
	@flutter pub get
