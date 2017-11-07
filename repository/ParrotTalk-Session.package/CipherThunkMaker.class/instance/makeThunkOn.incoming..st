thunk
makeThunkOn: secretBytesHolder incoming: incoming

	| downCipher ivHolder upCipher |
	downCipher := self 	cipherOnSecretBytes: (secretBytesHolder at: 1) incoming: incoming mode: #ENCRYPT.
	upCipher := self cipherOnSecretBytes: (secretBytesHolder at: 1) incoming: incoming mode: #DECRYPT.
	secretBytesHolder at: 1 put: nil.
	ivHolder := Array new: 1.

	[^ (Thunk new)
					upThunk: [:frame | 
						upCipher hasVector ifTrue: [upCipher initialVector: frame header ivSequence].
						upCipher decrypt: frame payload ];
					headerMakerThunk: [:frame | Encrypted ivSequence: (ivHolder at: 1) ];
					downThunk: [:frame | | chunk |
						ivHolder at: 1 put: (downCipher hasVector ifTrue: [downCipher vector copy] ifFalse:[#[]]).
						chunk := downCipher encrypt: frame asByteArray.
						downCipher vector: (chunk copyFrom: (chunk size - downCipher blockSize + 1) to: chunk size).
						chunk ];
					yourself]
			on: Exception
			do: [ :ex | self error: 'protocol install failure: ', ex ].
