comparing
isInternalNetwork

	^ ('192.168.*' match: self host) or: ['localhost' match: self host].
