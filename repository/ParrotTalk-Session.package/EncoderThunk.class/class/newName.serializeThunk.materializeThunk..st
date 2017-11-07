instance creation
newName: short serializeThunk: serialThunk materializeThunk: materialThunk

	^ self new
		initializeName: short 
		serializeThunk: serialThunk 
		materializeThunk: materialThunk;
	yourself