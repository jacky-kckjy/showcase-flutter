gen:
	dart run build_runner build --delete-conflicting-outputs

watch:
	dart run build_runner watch --delete-conflicting-outputs

update-string:
	sh scripts/updateString.sh

update-image:
	sh scripts/updateImages.sh

update-icon:
	sh scripts/updateIcons.sh




