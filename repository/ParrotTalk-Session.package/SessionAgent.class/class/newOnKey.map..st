instance creation
newOnKey: key map: map

	Socket initializeNetwork.
	^ self new 
		initializeOnKey: key map: map;
		yourself
