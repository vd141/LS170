#!/usr/bin/env bash

function server () {
    while true
    do
        read method path version
        if [[ $method == "GET" ]]
        then
            filepath="./www$path"
            echo $(pwd)
            if [[ -f $filepath ]]
            then
                echo "HTTP/1.1 200 OK\r\n"
                cat $filepath
            else
                echo "HTTP/1.1 404 Not Found"
            fi
        else
            echo "HTTP1.1 400 Bad Request"
        fi
    done
}

coproc SERVER_PROCESS { server; }

nc -lvp 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}