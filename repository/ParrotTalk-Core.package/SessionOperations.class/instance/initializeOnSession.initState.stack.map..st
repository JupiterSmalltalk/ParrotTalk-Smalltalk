initialize-release
initializeOnSession: sess initState: initState stack: localStack map: map

	session := sess.
	currentState := initState.
	stack := localStack.
	securityOps := SecurityOps newOnMap: map.
