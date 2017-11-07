building
buildMapAESedeAsn1Der

	^ SessionAgentMap newProtocol: self buildAESedeProtocolMaker encoder: self buildAsn1DerEncoderThunk