asn1der
initializeASN1Types

	self allSubclassesDo: [ :eachClass | eachClass initializeASN1Types ].

	((ASN1Module name: #Session) choice: #PhaseHeader)
		add: #DuplicateConnection type: #DuplicateConnection explicitTag: DuplicateConnection headerType;
		add: #NotMe type: #NotMe explicitTag: NotMe headerType;
		add: #ProtocolOffered type: #ProtocolOffered explicitTag: ProtocolOffered headerType;
		add: #ProtocolAccepted type: #ProtocolAccepted explicitTag: ProtocolAccepted headerType;
		add: #RawData type: #RawData explicitTag: RawData headerType;
		add: #Encoded type: #Encoded explicitTag: Encoded headerType;
		add: #Encrypted type: #Encrypted explicitTag: Encrypted headerType;
		add: #MAC type: #MAC explicitTag: MAC headerType;
		add: #IWant type: #IWant explicitTag: IWant headerType;
		add: #IAm type: #IAm explicitTag: IAm headerType;
		add: #GiveInfo type: #GiveInfo explicitTag: GiveInfo headerType;
		add: #ReplyInfo type: #ReplyInfo explicitTag: ReplyInfo headerType;
		add: #Go type: #Go explicitTag: Go headerType;
		add: #GoToo type: #GoToo explicitTag: GoToo headerType;
		yourself.

		^ (ASN1Module name: #Session) find: #PhaseHeader.
