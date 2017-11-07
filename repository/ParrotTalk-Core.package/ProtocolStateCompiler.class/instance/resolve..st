compiling
resolve: edge

	| action target |
	action := edge key.
	target := edge value.
	target := (self includesKey: target)
		ifTrue: [self at: target]
		ifFalse: [target isNil
					ifTrue: [nil]
					ifFalse: [self error: 'unknown target state ' , edge printString]].
	^ action -> target