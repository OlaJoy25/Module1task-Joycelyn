
jq . snyk-report.json

jq .vulnerabilties[] snyk-report.js

jq .'vulnerabilities[] | [.title, .severity, .cvssScore]' snyk-report.json

jq .'vulnerabilities[] | [.title, .severity, .cvssScore] | @csv' snyk-report.json

jq -r '.vulnerabilities[] | [.title, .severity, .cvssScore] | @csv' snyk-report.json


