module.exports = {
  apps: [{
    name: "bitever-node",
    script: "./src/bitcoind",
    args: [
      "-datadir=/root/myfork",
      "-rpcuser=user",
      "-rpcpassword=pass",
      "-server=1",
      "-dnsseed=0",
      "-fixedseeds=0",
      "-listen=1",
      "-prune=0",
      "-minimumchainwork=0",
      "-assumevalid=",
      "-debug=net",
      "-debugexclude=addrman",
      "-debugexclude=libevent",
      "-debugexclude=tor",
      "-printtoconsole" // 이 부분이 핵심입니다!
    ].join(" "),
    cwd: "/root/bitever",
    interpreter: "none"
  }]
};
