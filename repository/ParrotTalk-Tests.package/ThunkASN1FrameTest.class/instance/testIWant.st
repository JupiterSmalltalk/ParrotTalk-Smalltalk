as yet unclassified
testIWant

	| hdr frame bytes newFrame encodedBytes |
	encodedBytes := #[0 0 0 65 0 0 0 29 168 19 12 10 49 50 51 52 53 54 55 56 57 48 12 5 104 101 108 108 111].
	hdr := IWant new.
	hdr vatId: '1234567890'.
	hdr domain: 'hello'.
	frame := hdr asFrame.
	bytes := frame asByteArray.
"	Transcript cr; cr; show: bytes printString."
	self assert: (frame tags == 0).
	self assert: (frame multicast == 0).
	self assert: (frame frameVersion == 1).
	self assert: (frame priority == 0).
	self assert: (frame headerType == 8).
	self assert: (frame hash == 0).
	self assert: (frame messageSize == 29).

	self assert: (bytes = encodedBytes).

	newFrame := Frame readFrom: bytes readStream.
	self assert: (frame header class = newFrame header class).
	self assert: (frame header vatId = newFrame header vatId).
	self assert: (frame header domain = newFrame header domain).
