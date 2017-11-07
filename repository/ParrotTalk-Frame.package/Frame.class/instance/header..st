accessing
header: anObject

	header := anObject.
	header when: #recomputeSpec send: #recomputeSpec to: self.
	header recomputeSpec.
	