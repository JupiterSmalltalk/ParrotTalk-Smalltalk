building
buildAsn1DerEncoderThunk

	^ EncoderThunk
		newName: 'asn1der'
		serializeThunk: [:payload | payload asAsn1DerBytes ]
		materializeThunk: [:payload | ASN1InputStream decodeBytes: payload asByteArray ]