building
buildMapDESAsn1Der

	^ SessionAgentMap newProtocol: self buildDESProtocolMaker encoder: self buildAsn1DerEncoderThunk