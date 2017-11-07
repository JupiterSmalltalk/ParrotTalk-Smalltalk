comparing
hash
	^ stateName hash + (self collect: [:e | e key]) hash