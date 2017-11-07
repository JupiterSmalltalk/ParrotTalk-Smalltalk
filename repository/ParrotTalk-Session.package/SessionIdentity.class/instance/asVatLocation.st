accessing
asVatLocation

	^ self class basicNew
		socketAddress: self socketAddress deepCopy;
		vatId: self vatId deepCopy;
		yourself
