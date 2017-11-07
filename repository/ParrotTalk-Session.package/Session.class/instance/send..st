protocol
send: chunk

	| frame |
	chunk ifNil: [^ nil].
	(chunk isKindOf: Frame)
		ifTrue: [frame := chunk]
		ifFalse: [
			(chunk isEmpty) ifTrue: [^ chunk].
			frame := Frame onHeader: RawData new payload: chunk].
	stack downcall: frame from: self.