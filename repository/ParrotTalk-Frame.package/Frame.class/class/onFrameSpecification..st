instance creation
onFrameSpecification: spec

	| frame |
	(spec size >= self specificationSize)
		ifFalse: [CryptographyError signal: 'too few bytes'].
	frame := self basicNew initialize.
	frame initOnSpecification: spec.
	^ frame