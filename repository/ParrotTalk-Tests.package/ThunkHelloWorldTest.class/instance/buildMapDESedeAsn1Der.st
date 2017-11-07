building
buildMapDESedeAsn1Der

	^ SessionAgentMap newProtocol: self buildDESedeProtocolMaker encoder: self buildAsn1DerEncoderThunk