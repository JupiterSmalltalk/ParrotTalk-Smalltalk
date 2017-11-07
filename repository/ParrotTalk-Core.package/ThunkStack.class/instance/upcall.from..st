protocol
upcall: sourceFrame from: sourceGate

	| sourceIndex frame |
	sourceIndex := self indexOf: sourceGate.
	frame := sourceFrame.
	[[sourceIndex - 1 to: 1 by: -1 do: [:i | (self at: i) upcall: frame ] ]
		on: BlockCannotReturn do: [:ex | ^ nil ]]
		on: CryptographyError do: [:ex | ^ nil ].
	^ true