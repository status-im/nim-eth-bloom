import keccak_tiny, ttmath

iterator chunksForBloom(h: Hash[256]): array[2, uint8] =
  yield [h.data[0], h.data[1]]
  yield [h.data[2], h.data[3]]
  yield [h.data[4], h.data[5]]

proc chunkToBloomBits(chunk: array[2, uint8]): Int2048 =
  let h = chunk[0].int
  let l = chunk[1].int
  1.i2048 shl ((l + (h shl 8)) and 2047)

iterator bloomBits(h: Hash[256]): Int2048 =
  for chunk in chunksForBloom(h):
    yield chunkToBloomBits(chunk)

type BloomFilter* = object
  value*: Int2048

proc incl(f: var BloomFilter, h: Hash[256]) = # Should this be public?
  for bits in bloomBits(h):
    f.value |= bits

template incl*(f: var BloomFilter, v: typed) =
  f.incl(keccak_256(v))

proc contains(f: BloomFilter, h: Hash[256]): bool = # Should this be public?
  for bits in bloomBits(h):
    if isZero(f.value and bits): return false
  return true

template contains*(f: BloomFilter, v: typed): bool =
  f.contains(keccak_256(v))
