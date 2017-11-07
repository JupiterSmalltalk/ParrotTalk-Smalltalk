initialize-release
recomputeSpec

	self messageSize: (self specificationSize + header asAsn1DerBytes size + self payload size).
	self headerType: header headerType.
