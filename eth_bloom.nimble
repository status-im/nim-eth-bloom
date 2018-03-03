# Package

version       = "0.1.0"
author        = "Status Research & Development GmbH"
description   = "Ethereum Bloom Filter"
license       = "Apache2"
srcDir        = "src"

# Dependencies

requires "nim >= 0.17.0",
         "keccak_tiny >= 0.1.0",
         "ttmath >= 0.5.0"

task test, "Run tests":
  --run
  setCommand "cpp", "tests/test1.nim"
