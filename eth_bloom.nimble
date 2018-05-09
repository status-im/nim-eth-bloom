# Package

version       = "0.1.0"
author        = "Status Research & Development GmbH"
description   = "Ethereum Bloom Filter"
license       = "Apache2"
srcDir        = "src"

# Dependencies

requires "nim >= 0.18",
         "nimcrypto",
         "stint"

task test, "Run tests":
  --run
  setCommand "c", "tests/test1.nim"
