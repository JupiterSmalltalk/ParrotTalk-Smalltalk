private
computeIvHash: secretBytes

	| opsHash |
	opsHash := SecurityOps hash: secretBytes pad: 16r33.
	[(blockSize * 2) > opsHash size] whileTrue: [opsHash := opsHash, (SecurityOps hash: secretBytes pad: 16r33)].
	^ opsHash