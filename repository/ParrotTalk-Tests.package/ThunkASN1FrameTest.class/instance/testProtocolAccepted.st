as yet unclassified
testProtocolAccepted

	| hdr frame bytes newFrame encodedBytes |
	encodedBytes := #[0 0 0 25 0 0 0 21 163 11 12 9 87 104 105 115 112 101 114 45 49].
	hdr := ProtocolAccepted new.
	hdr accepted: 'Whisper-1'.
	frame := hdr asFrame.
	bytes := frame asByteArray.
"	Transcript cr; cr; show: bytes printString."
	self assert: (frame tags == 0).
	self assert: (frame multicast == 0).
	self assert: (frame frameVersion == 1).
	self assert: (frame priority == 0).
	self assert: (frame headerType == 3).
	self assert: (frame hash == 0).
	self assert: (frame messageSize == 21).

	self assert: (bytes = encodedBytes).

	newFrame := Frame readFrom: bytes readStream.
	self assert: (frame header class = newFrame header class).
	self assert: (frame header accepted = newFrame header accepted).
