accessing
address
	"Answer the address of host"

	| address |
	address := NetNameResolver addressFromString: host.
	address ifNil: [address := NetNameResolver addressForName: host].
	^ address