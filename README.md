# Module1task-Joycelyn

jq is a linux command line utility used to extract data from json files. It is used to parse json files in bash scripting.
You install jq, if you don't already have in your terminal using the commandline sudo apt install -y jq.
To write the script in  file, make sure you are your file is in the same location as your json file.

Acess the json file first.
jq . snyk-report.json
then parse  into the the file, permiting us to extract
jq .vulnerabilties[] snyk-report.js
#extract the items from the top level element/block(vulnerabilities)
jq .'vulnerabilities[] | [.title, .severity, .cvssScore]' snyk-report.json

We set our output into a csv command using the pipe command which enables one to send one output into another form
# set in csv format
jq .'vulnerabilities[] | [.title, .severity, .cvssScore] | @csv' snyk-report.json

the parameter -r is added to enable the output format to be printed out
jq -r '.vulnerabilities[] | [.title, .severity, .cvssScore] | @csv' snyk-report.json
