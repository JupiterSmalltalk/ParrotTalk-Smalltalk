initialize-release
initializeOnSocket: sock

	self initialize.
	stack := ThunkStack on: self.
	socket := sock.
	primitiveFailedError := (Smalltalk hasClassNamed: #NotImplemented)
		ifTrue: [Smalltalk classNamed: #NotImplemented]
		ifFalse: [Smalltalk classNamed: #PrimitiveFailed].
