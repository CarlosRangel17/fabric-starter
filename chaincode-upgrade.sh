#!/usr/bin/env bash
source lib.sh
usageMsg="$0 chaincodeName channelName [init args='[]'] [version=1.0] [endorsementPolicy='ANY']"
exampleMsg="$0 chaincode1 common '[\"Init\",\"arg1\",\"val1\"]' 2.0 \"OR ('org1.member', 'org2.member')\""

IFS=
chaincodeName=${1:?`printUsage "$usageMsg" "$exampleMsg"`}
channelName=${2:?`printUsage "$usageMsg" "$exampleMsg"`}
chaincodeVersion=${3}
initArguments=${4:'[]'}

upgradeChaincode "$channelName" "$chaincodeName" "$initArguments" "$chaincodeVersion"
