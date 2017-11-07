instance creation
newOnPort: port

	^ self new
		host: self localHostName;
		port: port;
		yourself