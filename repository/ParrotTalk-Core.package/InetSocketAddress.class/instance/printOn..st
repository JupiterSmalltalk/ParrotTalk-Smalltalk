comparing
printOn: aStream

	aStream nextPutAll: self host, ':', self port asString.
