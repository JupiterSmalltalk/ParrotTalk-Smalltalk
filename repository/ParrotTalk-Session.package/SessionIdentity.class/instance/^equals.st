comparing
= anotherObject

	^ ( anotherObject class includesBehavior: self class )
		and: [ self vatId = anotherObject vatId ].