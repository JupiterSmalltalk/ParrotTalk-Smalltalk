as yet unclassified
buildSmallChunk: size

	| chunk |
	chunk := ByteArray new: size.
	1 to: size do: [ :index | chunk at: index put: index ].
	^ chunk.
