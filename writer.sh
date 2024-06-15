if ([ $# -eq 2 ]);
then
        directory=$1
        if([ ! -d "${directory%/*}/" ]);
        then
                mkdir -p "${directory%/*}/"
        fi
        echo $2 > $directory
        exit 0
else
        echo "Incorrect Usage: ./writer.sh <file> <text>"
        exit 1
fi

