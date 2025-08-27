#!/bin/bash

# 환경 설정
DATADIR="/home/makewalletfirst/myfork"
RPCUSER="user"
RPCPASS="pass"
RPCPORT="8334"
CLI="/home/makewalletfirst/bitever/src/bitcoin-cli"

# 채굴 보상 받을 주소 생성 (스크립트 시작 시 1회만)
#ADDR=$($CLI -datadir="$DATADIR" -rpcuser="$RPCUSER" -rpcpassword="$RPCPASS" -rpcport="$RPCPORT" getnewaddress)
ADDR="bc1qyvwd3dd0kgf02yzp697794rkpt2ww7nsukqxkc"
echo "채굴 보상 주소: $ADDR"
echo "10분마다 1블록씩 채굴 시작..."

# 무한 반복
while true; do
    NOW=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$NOW] 채굴 시도..."
    
    $CLI -datadir="$DATADIR" \
         -rpcuser="$RPCUSER" \
         -rpcpassword="$RPCPASS" \
         -rpcport="$RPCPORT" \
         generatetoaddress 1 "$ADDR"

    echo "[$NOW] 채굴 완료. 10분 대기..."
    sleep 600
done

