# BitEver (BEC)

> *"2017년, 블록 사이즈 워. 그 당시의 체인을 직접 경험하세요"*  
> *"Experience the chain from the 2017 Bitcoin block size war — firsthand."*

BitEver (BEC) is a Bitcoin hard fork designed for **blockchain education and hands-on learning**.  
The chain launched independently from Bitcoin block **#478,559**, forked at the same point as Bitcoin Cash (#478,558).

[![Discord](https://img.shields.io/badge/Discord-Join-5865F2?logo=discord)](https://discord.com/invite/dfSF58pzZB)
[![Block Explorer](https://img.shields.io/badge/Explorer-bitever.ever--chain.xyz-blue)](https://bitever.ever-chain.xyz)
[![YouTube](https://img.shields.io/badge/YouTube-@지만쫌-red?logo=youtube)](http://www.youtube.com/@지만쫌)

---

## What is BitEver?

BitEver is **not just another fork coin**.  
It is a live Bitcoin-equivalent chain built as an accessible environment where anyone — from beginners to developers — can experience real blockchain mechanics: mining, wallet creation, and transaction signing.

| Property | Value |
|---|---|
| Ticker | **BEC** |
| Fork Source | Bitcoin Core |
| Fork Block | #478,558 (same as BCH) |
| Independent Chain Start | #478,559 |
| SegWit Activation | Block #478,560 |
| Difference from Bitcoin | Magic bytes only |
| Issuance Policy | Identical to Bitcoin (21M cap, halving) |

> Bitcoin's full codebase and consensus rules are preserved as-is.  
> Only the network magic bytes are changed — making BEC a clean, isolated Bitcoin-equivalent network.

---

## Features

### Block Explorers
- **Esplora-based Web Explorer** — [bitever.ever-chain.xyz](https://bitever.ever-chain.xyz)  
  Supports Satoshi-era wallet lookup (P2PKH → P2PK auto-query). First load may be slow.
- **BTC-RPC Explorer** — [bitever2.ever-chain.xyz](https://bitever2.ever-chain.xyz)  
  RPC-level block and transaction inspection.

### Wallet
- Custom **Electrum wallet** provided — no command-line required  
- Full GUI-based wallet management for non-technical users

### Community
- Discord server for users and node operators: [Join here](https://discord.com/invite/dfSF58pzZB)
- YouTube channel with Bitcoin education content: [@지만쫌](http://www.youtube.com/@지만쫌)

---

## Running a Node

### 1. Install dependencies

```bash
sudo apt update
sudo apt install -y build-essential autoconf automake libtool \
  pkg-config libssl-dev libevent-dev \
  libboost-system-dev libboost-filesystem-dev \
  libboost-test-dev libboost-thread-dev \
  libdb-dev libdb++-dev libsqlite3-dev \
  qtbase5-dev qttools5-dev-tools \
  git curl wget
```

### 2. Build

```bash
./autogen.sh
./configure
make clean
make -j$(nproc)
```

### 3. Run

```bash
# Start daemon (local only)
./src/bitcoind -daemon

# Start and connect to the seed node
./src/bitcoind -connect=bitevernode.ever-chain.xyz -daemon
```

> DNS seed is served via pdns. The network is live and accepting peer connections.

---

## Vision

- **Education-first**: Real blockchain experience without the financial risk of mainnet Bitcoin
- **Accessible**: GUI wallet removes the command-line barrier for new users
- **Long-term**: Community-driven growth, with an automated exchange program planned

---

## Links

| Resource | URL |
|---|---|
| Block Explorer (Esplora) | https://bitever.ever-chain.xyz |
| Block Explorer (RPC) | https://bitever2.ever-chain.xyz |
| Discord | https://discord.com/invite/dfSF58pzZB |
| YouTube | http://www.youtube.com/@지만쫌 |

---

## License

MIT — See [COPYING](./COPYING) for details.  
Bitcoin Core original source: [bitcoin/bitcoin](https://github.com/bitcoin/bitcoin)

