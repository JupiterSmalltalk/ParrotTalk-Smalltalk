thunk - accessing
upThunk

	^ [:frame |
		(self transitionEvent: frame headerType frame: frame)
			ifTrue: [	BlockCannotReturn signal: 'gatekeeper processed frame'] ].
