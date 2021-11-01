
# Created by `pipx` on 2021-05-24 17:27:14
export PATH="$PATH:/Users/bryan.yunis/.local/bin"
export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain gateless --domain-owner 546781284141 --query authorizationToken --output text`
