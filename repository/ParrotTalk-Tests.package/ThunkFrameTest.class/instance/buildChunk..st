as yet unclassified
buildChunk: size

	| bytes chunk start |
	chunk := ByteArray new: size.
	(size < 10) ifTrue: [ ^ self buildSmallChunk: size ].
	bytes := #[1 2 3 4 5 6 7 8 9 0].
	0 to: (size // bytes size - 1) do: [ :i | chunk replaceFrom: (i * bytes size + 1) to: ((i + 1) *bytes size) with: bytes startingAt: 1].
	start := (size // bytes size) * bytes size + 1.
	chunk replaceFrom: start to: size with: (self buildChunk: (size - start + 1)) startingAt: 1.
	^ chunk