#!/bin/bash

function server () {

}

coproc SERVER_PROCESS { server; }

netcat -lv 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}