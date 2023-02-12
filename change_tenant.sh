grep -rl "dil3mm4tenant" --exclude=\*.sh | xargs sed -i "s/dil3mm4tenant/$1/g"
apktool b .
zipalign 4 dist/GcsDialer.apk dist/DIA_TCL.apk
apksigner sign --key keys/shared.pk8 --cert keys/shared.x509.pem --in ./dist/DIA_TCL.apk
git reset --hard
