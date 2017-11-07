action
matchBestEncoder: otherEncoders

	^ portalMap dataEncoderNames
		detect: [:each | otherEncoders includes: each]
		ifNone: [''].
