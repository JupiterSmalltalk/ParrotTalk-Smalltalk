initialize-release
buildOverWireProtocols

	| protocolStream |
	protocolStream := WriteStream on: String new.
	self cryptoProtocols 
		do: [:each | protocolStream nextPutAll: each]
		separatedBy: [protocolStream nextPut: $,].
	^ protocolStream contents.
