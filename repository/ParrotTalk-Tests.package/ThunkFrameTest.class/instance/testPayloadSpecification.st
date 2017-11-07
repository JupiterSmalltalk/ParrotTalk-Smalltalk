as yet unclassified
testPayloadSpecification

	| frame |
	[
			frame := IWant new asFrame.
			self assert: (frame tags == 0).
			self assert: (frame multicast == 0).
			self assert: (frame frameVersion == 1).
			self assert: (frame priority == 0).
			self assert: (frame headerType == 8).
			self assert: (frame hash == 0).
			self assert: (frame messageSize == 14).
		] on: Exception do: [ :ex | self assert: false ].