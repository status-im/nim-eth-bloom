# Package

version       = "0.1.0"
author        = "Status Research & Development GmbH"
description   = "Ethereum Bloom Filter"
license       = "Apache2"
srcDir        = "src"

# Dependencies

requires "nim >= 0.17.0",
         "https://github.com/status-im/nim-keccak-tiny.git >= 0.1.0",
         "https://github.com/status-im/nim-ttmath >= 0.5.0"

task test, "Run tests":
  setCommand "cpp", "tests/test1.nim"
