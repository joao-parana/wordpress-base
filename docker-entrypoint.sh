#!/bin/bash
set -e

echo "Wordpress Container ..."
if [ "$1" = 'wordpress' ]; then
    echo "Wordpress will be running"

    if [ -z "$(ls -A "$WP_CONTENT")" ]; then
        echo "Variable WP_CONTENT have this value: $WP_CONTENT"
    fi

    echo "See bellow the parameters list "
    echo "$@"
fi

if [ "$1" = '--help' ]; then
    echo "You need to invoke this Container in this way:"
    echo "Blá, blá, blá ... "
    echo "See bellow the parameters list "
    echo "$@"
fi

exec "$@"
