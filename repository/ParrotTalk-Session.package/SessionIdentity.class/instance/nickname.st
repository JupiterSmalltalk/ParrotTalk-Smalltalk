accessing
nickname

	^ nickname isNil
		ifTrue: [nickname := self vatId asString]
		ifFalse: [nickname].
