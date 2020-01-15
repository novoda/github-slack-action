#!/bin/bash

# args:
# 1. color
# 2. text
# 3. webhook
# 4. usernameslackmap: "carlos::abc jose::123"

# ./entrypoint.sh "good" "Hello zegnus" "https://hooks.slack.com/services/..." "true" "zegnus-U000000, laith-U11111"

textInput=${2}

if [ ! -z "$4" ] 
then
    gitSlackPair=${4}
    arrayGitSlack=($(echo $gitSlackPair | tr ' ' "\n"))

    for i in "${arrayGitSlack[@]}"
    do
        gitSlack=($(echo $i | tr '::' "\n"))
        gitName=${gitSlack[0]}
        slackCode=${gitSlack[1]}
        textInput="${textInput/$gitName/<@$slackCode>}"
    done
fi

# echo $textInput

data='{"attachments": [{"color": "'${1}'","text": "'$textInput'"}]}'
curl -X POST -H 'Content-type: application/json' --data "$data" $3
