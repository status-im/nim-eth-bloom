# eth_bloom - Ethereum Bloom Filter [![Build Status](https://travis-ci.org/status-im/nim-eth-bloom.svg?branch=master)](https://travis-ci.org/status-im/nim-eth-bloom)


## Introduction
Bloom filters are a type of data structure that use cryptographic hashes
to help data stored within them to be retrieved or stored.  They work like other
data structures, but in a probabilistic way: it allows for false positive
matches but not false negative matches.  Bloom filters storage space use is
low relative to other kinds of data structures.

( For more information on Bloom filters, see Wikipedia: https://en.wikipedia.org/wiki/Bloom_filter )

Ethereum bloom filters are bloom filters implemented with the SHA-256 ("keccak") cryptographic hash function.

To see the bloom filter used in the context of the full description of Ethereum / the "Yellow Paper" see

DR. GAVIN WOOD - ETHEREUM: A SECURE DECENTRALISED GENERALISED TRANSACTION LEDGER, EIP-150 REVISION, FOUNDER, ETHEREUM & ETHCORE, GAVIN@ETHCORE.IO
http://gavwood.com/Paper.pdf


## Installation
```
nimble install https://github.com/status-im/nim-eth-bloom
```

## Usage
```nim
import eth_bloom, stint
var f: BloomFilter
f.incl("test1")
assert("test1" in f)
assert("test2" notin f)
f.incl("test2")
assert("test2" in f)
assert(f.value.toHex == "80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000200000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000000000")
```

## License
Licensed under either of

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.
