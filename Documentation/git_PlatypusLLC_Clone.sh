#!/bin/bash

# url di github
url="https://github.com/"

# cartella dei repository
folder="PlatypusLLC/"

# creo la cartella e ci entro
mkdir $folder
cd $folder

# vari repository
repos[1]="server"
repos[2]="tablet"
repos[3]="firmware"
repos[4]="documentation"
repos[5]="analytics"
repos[6]="core"
repos[7]="tunnel"
repos[8]="arduino"
repos[9]="maven-repository"
repos[10]="nasa-wwj-maven"

# eseguo il comando inviato dall'esterno
for repo in "${repos[@]}"; do
	com=`echo "git clone -v "$url$folder$repo`
	$com
done
