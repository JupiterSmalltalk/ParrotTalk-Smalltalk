instance creation
fromString: hostPortString

	| colonPos host port |
	colonPos := hostPortString findString: ':'.
	colonPos isZero
		ifTrue: [
			host := hostPortString.
			port := '9999']
		ifFalse: [
			host := hostPortString first: colonPos - 1.
			port := hostPortString allButFirst: colonPos].
	^ self newOnName: host port: port asInteger
