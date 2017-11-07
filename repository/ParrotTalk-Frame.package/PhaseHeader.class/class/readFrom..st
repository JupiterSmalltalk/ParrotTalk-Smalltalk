instance creation
readFrom: stream	

	| type |
	[type := (ASN1Module name: #Session) find: #PhaseHeader.
	^ (ASN1InputStream onStream: stream) decodeWithType: type]
		on: Error
		do: [:ex |
			self halt. ex resignalAs: (ASN1ParseError new messageText: 'frame header')].
	ASN1ParseError signal: 'frame header'.