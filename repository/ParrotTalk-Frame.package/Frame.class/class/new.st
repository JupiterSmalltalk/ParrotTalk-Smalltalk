instance creation
new

	| frame |
	frame := self onFrameSpecification: (ByteArray new: self specificationSize withAll: 0).
	frame frameVersion: 1.
	^ frame
