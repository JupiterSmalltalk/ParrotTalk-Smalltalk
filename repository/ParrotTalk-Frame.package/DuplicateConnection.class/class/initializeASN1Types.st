as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session)
		sequence: #DuplicateConnection mapping: DuplicateConnection)
			yourself.
	(ASN1Module name: #Session) find: #DuplicateConnection.
