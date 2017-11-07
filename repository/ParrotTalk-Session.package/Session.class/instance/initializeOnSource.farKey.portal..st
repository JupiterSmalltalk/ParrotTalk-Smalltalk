initialize-release
initializeOnSource: source farKey: aFarKey portal: aPortal

	| ops |
	farKey := aFarKey.
	portal := aPortal.
	stack := source stack.
	map := portal portalMap copy.

	ops := SessionOperations newOnStack: stack session: self map: map.
	stack
		push:	(FrameBuffer newOnStack: stack);
		push:	ops;
		propertyAt: #Ops put: ops;
		push:	self;
		install.

	ops when: #connectionSuccessful send: #connectionRunning: to: portal with: self.