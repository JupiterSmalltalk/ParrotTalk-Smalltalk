instance creation
newOnAddress: address port: port

	^ self newOnName: (NetNameResolver stringFromAddress: address) port: port.
