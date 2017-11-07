as yet unclassified
testProtocolOffered

	| hdr frame bytes newFrame encodedBytes |
	encodedBytes := #[0 0 0 9 0 0 0 32 161 22 12 9 87 104 105 115 112 101 114 45 49 12 9 87 104 105 115 112 101 114 45 49].
	hdr := ProtocolOffered new.
	hdr offered: 'Whisper-1'.
	hdr preferred: 'Whisper-1'.
	frame := hdr asFrame.
	bytes := frame asByteArray.
"	Transcript cr; cr; show: bytes printString."
	self assert: (frame tags == 0).
	self assert: (frame multicast == 0).
	self assert: (frame frameVersion == 1).
	self assert: (frame priority == 0).
	self assert: (frame headerType == 1).
	self assert: (frame hash == 0).
	self assert: (frame messageSize == 32).

	self assert: (bytes = encodedBytes).

	newFrame := Frame readFrom: bytes readStream.
	self assert: (frame header class = newFrame header class).
	self assert: (frame header offered = newFrame header offered).
	self assert: (frame header preferred = newFrame header preferred).
