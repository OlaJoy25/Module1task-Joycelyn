
jq . snyk-report.json
#parse the file
jq .vulnerabilties[] snyk-report.js
#extract the items from the top level element
jq .'vulnerabilities[] | [.title, .severity, .cvssScore]' snyk-report.json

# sent in csv format
jq .'vulnerabilities[] | [.title, .severity, .cvssScore] | @csv' snyk-report.json

jq -r '.vulnerabilities[] | [.title, .severity, .cvssScore] | @csv' snyk-report.json


