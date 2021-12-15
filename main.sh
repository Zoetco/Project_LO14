#!/bin/bash

function browse {
	echo "\nthis is the browse function"
}

function create {
	echo "\nthis is the create function"
}

function list {
	echo "\nthis is the list function"
}

function extract {
	echo "\nthis is the extract function"
}

function show_help {
	echo ""
	echo "Available commands:"
	echo "  authenticate CLUSTERHOST SCOPE"
	echo ""
	echo "  upload-package CLUSTERHOST APPLICATION VERSION PACKAGE"
	echo "  deploy-service CLUSTERHOST NODE APPLICATION VERSION PACKAGE"
	echo "  start-service CLUSTERHOST NODE APPLICATION"
	echo "  stop-service CLUSTERHOST NODE APPLICATION"
	echo "  status CLUSTERHOST"
	echo ""
	echo "Supported options are:"
	echo "  --url URL 				to set zccluster's url"
	echo "  --user USER 			to set user name"
	echo "  --password PASSWORD		to set user password"
	echo "  --access-token TOKEN 	to set access token"
	echo ""
}


COMMAND=$1
shift

case $COMMAND in
	browse)
		browse $*
		;;

    create)
		create $*
		;;
    list)
		list $*
		;;
    extract)
		extract $*
		;;
    *)
		show_help
		exit 1
		;;
esac

exit 0
