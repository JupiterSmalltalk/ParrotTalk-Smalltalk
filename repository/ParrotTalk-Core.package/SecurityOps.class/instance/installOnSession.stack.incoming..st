action
installOnSession: session stack: stack incoming: incoming

	stack pop. "session"
	stack push: (self makeImmigrationThunk: stack).
	stack push: (self makeCipherThunk: stack incoming: incoming).
	"stack push: (self makeGzipThunk: stack)."
	stack push: (self makeCustomsThunk: stack).
	stack push: (self makeEncoderThunk: stack key: session farKey).
	stack push: session.
