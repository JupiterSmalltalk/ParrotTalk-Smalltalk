instance creation
onHeader: header payload: payload

	^ self new
		header: header;
		payload: payload;
		yourself.