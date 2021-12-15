#!/bin/bash

function browse {
	nom_serveur=$1
	port=$2
	nom_archive=$3
	echo "this is the browse function"
	echo "nom_serveur = $nom_serveur"
	echo "port = $port"
	echo "nom_archive = $nom_archive"
}

function create {
	nom_serveur=$1
	port=$2
	nom_archive=$3
	echo "this is the create function"
	echo "nom_serveur = $nom_serveur"
	echo "port = $port"
	echo "nom_archive = $nom_archive"
}

function list {
	nom_serveur=$1
	port=$2
	echo "this is the list function"
	echo "nom_serveur = $nom_serveur"
	echo "port = $port"
}

function extract {
	nom_serveur=$1
	port=$2
	nom_archive=$3
	echo "this is the extract function"
	echo "nom_serveur = $nom_serveur"
	echo "port = $port"
	echo "nom_archive = $nom_archive"
}

function show_help {
	echo ""
	echo "Available commands:"
	echo "  -browse nom_serveur port nom_archive"
	echo "  -create nom_serveur port nom_archive"
	echo "  -extract nom_serveur port nom_archive"
	echo "  -list nom_serveur port"
	echo ""
}


COMMAND=$1
shift

case $COMMAND in
	-browse)
		browse $*
		;;

    -create)
		create $*
		;;
    -list)
		list $*
		;;
    -extract)
		extract $*
		;;
    *)
		show_help
		exit 1
		;;
esac

exit 0
