private
computeIv: secretBytes incoming: incoming mode: cryptMode

	| hash receive send |
	hash := self computeIvHash: secretBytes.

	incoming 
		ifTrue: [
			send := hash copyFrom: (self blockSize + 1) to: (self blockSize * 2).
			receive := hash copyFrom: 1 to: self blockSize]
		ifFalse: [
			send := hash copyFrom: 1 to: self blockSize.
			receive := hash copyFrom: (self blockSize + 1) to: (self blockSize * 2)].

	^ (cryptMode == #ENCRYPT)
		ifTrue: [send]
		ifFalse: [receive].
