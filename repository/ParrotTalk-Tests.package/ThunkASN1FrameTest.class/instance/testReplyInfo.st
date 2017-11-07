as yet unclassified
testReplyInfo

	| hdr frame bytes newFrame encodedBytes |
	encodedBytes := #[0 0 0 89 0 0 0 31 171 21 48 8 12 6 65 69 83 101 100 101 48 9 12 7 97 115 110 49 100 101 114].
	hdr := ReplyInfo new.
	hdr cryptoProtocols: (OrderedCollection with: 'AESede').
	hdr dataEncoders: (OrderedCollection with: 'asn1der').
	frame := hdr asFrame.
	bytes := frame asByteArray.
"	Transcript cr; cr; show: bytes printString."
	self assert: (frame tags == 0).
	self assert: (frame multicast == 0).
	self assert: (frame frameVersion == 1).
	self assert: (frame priority == 0).
	self assert: (frame headerType == 11).
	self assert: (frame hash == 0).
	self assert: (frame messageSize == 31).

	self assert: (bytes = encodedBytes).

	newFrame := Frame readFrom: bytes readStream.
	self assert: (frame header class = newFrame header class).
	self assert: (frame header cryptoProtocols = newFrame header cryptoProtocols).
	self assert: (frame header dataEncoders = newFrame header dataEncoders).
