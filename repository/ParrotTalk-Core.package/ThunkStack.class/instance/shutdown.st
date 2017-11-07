protocol
shutdown

	[self notEmpty] whileTrue: [
		self head close. self pop].