ifneq (,$(wildcard ./.env))
    include .env
    export
endif

OUT_DIR=~/"Downloads"
APP_NAME=delimais_customer

.PHONY: icons build build-android build-ios clean

.default: icons

icons:
	@echo "Generating launcher icons"
	@dart run flutter_launcher_icons

build: build-ios build-android

build-ios:
	@echo "Building the IOS application"
	@flutter build ipa --release --obfuscate --split-debug-info ./build/app/outputs/bundle/release/
	@cp ./build/app/outputs/bundle/release/app-release.ipa ${OUT_DIR}/${APP_NAME}.ipa

build-android:
	@echo "Building the Android application"
	@flutter build appbundle --release --obfuscate --split-debug-info ./build/app/outputs/bundle/release/
	@cp ./build/app/outputs/bundle/release/app-release.aab ${OUT_DIR}/${APP_NAME}.aab

clean:
	@echo "Cleaning project"
	@flutter clean
	@flutter pub get
