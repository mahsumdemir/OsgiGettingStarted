#!/bin/bash
cd app
mvn bnd-run:run > log.txt 2>&1 &

# wait a little bit so mvn command has some time to finish
sleep 10
gp preview $(gp url 8080)/rest/upper/welcome
tail -f log.txt