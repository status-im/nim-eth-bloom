**eth_bloom: an Ethereum Bloom Filter** [![Build Status](https://travis-ci.org/status-im/nim-eth-bloom.svg?branch=master)](https://travis-ci.org/status-im/nim-eth-bloom)


# Introduction

A Nim implementation of the bloom filter used by Ethereum

# Description

[Bloom filters](https://en.wikipedia.org/wiki/Bloom_filter) are data structures that use cryptographic hashes for storage and retrieval of data. They work like other data structures but are probabilistic in nature: that is, they allow false positive matches but not false negative. Bloom filters use less storage space than other data structures.

Ethereum bloom filters are implemented with the SHA-256 (keccak) cryptographic hash function.

To see the bloom filter used in the context of Ethereum, please refer to the [Ethereum Yellow Paper](https://ethereum.github.io/yellowpaper/paper.pdf).


# Installation
```
$ nimble install eth_bloom
```

# Usage
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
# License
Licensed under either of

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.
