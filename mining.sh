#!/bin/bash

# 환경 설정
DATADIR="/root/myfork"
RPCUSER="user"
RPCPASS="pass"
RPCPORT="8334"
CLI="/root/bitever/build/bin/bitcoin-cli"

# 채굴 보상 받을 주소 생성 (스크립트 시작 시 1회만)
#ADDR=$($CLI -datadir="$DATADIR" -rpcuser="$RPCUSER" -rpcpassword="$RPCPASS" -rpcport="$RPCPORT" getnewaddress)
#ADDR="bc1qgwa7crngu9q7ummc7t6jemv2grz38tvmn60qzv"
#ADDR="bc1qu8x4tmvendr0awnc93ey8dl2wvm7ua8t6fu2fa" #bit5
ADDR="bc1qft3xkpzneehma0zfzm79zxewtj75j206sk7dtn" #bit7
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

