comparing
= anotherState
	^ self == anotherState
		or: [ 
			self class == anotherState class
				and: [ stateName = anotherState stateName ] ]