as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session)
		sequence: #IWant mapping: IWant)
			add: #vatId type: #ASN1UTF8StringType;
			add: #domain type: #ASN1UTF8StringType;
			yourself.
	(ASN1Module name: #Session) find: #IWant.
