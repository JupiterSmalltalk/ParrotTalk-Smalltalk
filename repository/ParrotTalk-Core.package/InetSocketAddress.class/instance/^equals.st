comparing
= anObject

	^ (anObject class includesBehavior: self class) 
		and: [(self host = anObject host) 
			and: [self port = anObject port]]