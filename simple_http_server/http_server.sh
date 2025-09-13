#!/usr/bin/env bash

function server () {
    while true
    do
        message_arr=()
        check=true
        while $check
        do
            read line
            message_arr+=($line)
            if [[ "${#line}" -eq 0 ]]
            then
                check=false
            fi
        done
        method=${message_arr[0]}
        path=${message_arr[1]}
        if [[ $method == "GET" ]]
        then
            filepath="./www/$path"
            if [[ -f $filepath ]]
            then
                echo -e "HTTP/1.1 200 OK\r\n"
                echo "Content-Length: $(wc -c < $filepath)"
                echo "Content-Type: text/html; charset=utf-8"
                echo -e "$(cat $filepath)\r\n"
            else
                echo "HTTP/1.1 404 Not Found"
                echo "Content-Length: 0"
            fi
        else
            echo "HTTP1.1 400 Bad Request"
            echo "Content-Length: 0"
        fi
    done
}

coproc SERVER_PROCESS { server; }

nc -klvp 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}