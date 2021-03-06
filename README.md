# eth_bloom: an Ethereum Bloom Filter

# MOVED TO https://github.com/status-im/nim-eth

[![Build Status (Travis)](https://img.shields.io/travis/status-im/nim-eth-bloom/master.svg?label=Linux%20/%20macOS "Linux/macOS build status (Travis)")](https://travis-ci.org/status-im/nim-eth-bloom)
[![Windows build status (Appveyor)](https://img.shields.io/appveyor/ci/nimbus/nim-eth-bloom/master.svg?label=Windows "Windows build status (Appveyor)")](https://ci.appveyor.com/project/nimbus/nim-eth-bloom)
[![License: Apache](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
![Stability: experimental](https://img.shields.io/badge/stability-experimental-orange.svg)

# Introduction

A Nim implementation of the bloom filter used by Ethereum.

# Description

[Bloom filters](https://en.wikipedia.org/wiki/Bloom_filter) are data structures that use hash functions to test whether an element is a member of a set. They work like other data structures but are probabilistic in nature: that is, they allow false positive matches but not false negative. Bloom filters use less storage space than other data structures.

Ethereum bloom filters are implemented with the Keccak-256 cryptographic hash function.

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

## License

Licensed and distributed under either of

* MIT license: [LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT

or

* Apache License, Version 2.0, ([LICENSE-APACHEv2](LICENSE-APACHEv2) or http://www.apache.org/licenses/LICENSE-2.0)

at your option. This file may not be copied, modified, or distributed except according to those terms.
