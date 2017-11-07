initialize-release
buildOverWireEncoders

	| stream |
	stream := WriteStream on: String new.
	dataEncoders 
		do: [:each | stream nextPutAll: each]
		separatedBy: [stream nextPut: $,].
	^ stream contents.
