accessing
takeSignature

	| sig |
	sig := signature.
	signature := #[].
	self recomputeSpec.
	^ sig