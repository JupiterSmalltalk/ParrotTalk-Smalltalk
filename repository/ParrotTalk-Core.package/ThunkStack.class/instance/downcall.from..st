protocol
downcall: sourceFrame from: sourceGate

	| sourceIndex frame |
	sourceIndex := self indexOf: sourceGate.
	frame := sourceFrame.
	[[ sourceIndex + 1 to: self size by: 1 do: [:i | (self at: i) downcall: frame] ]
		on: BlockCannotReturn do: [:ex | ^ nil ]]
		on: CryptographyError do: [:ex | ^ nil ].
	^ true