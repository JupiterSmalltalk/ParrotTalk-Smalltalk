instance creation
newOnStack: stack session: sess map: map

	^ self new
		initializeOnSession: sess initState: self stateMap compile stack: stack map: map;
		yourself
