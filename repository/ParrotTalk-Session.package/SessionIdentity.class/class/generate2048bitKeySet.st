private
generate2048bitKeySet
	"self generateKeySet"

	| generator public private |
	generator := RSAKeyPairGenerator new bits: 2048.
	public := generator publicKey.
	private := generator privateKey.
	^ public -> private