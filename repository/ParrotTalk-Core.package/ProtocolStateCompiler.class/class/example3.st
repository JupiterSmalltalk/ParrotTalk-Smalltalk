examples
example3		"Note: this example should pop up an error notifier during compilation"

	"ProtocolStateCompiler example3 compile"

	| desc |
	desc := self new.
	(desc newState: #initial -> (#echo: -> #initial)) add: $x -> (nil -> #statex).
	(desc newState: #statex -> (#echox: -> #initial)) add: $y -> (nil -> #statexy).
	(desc newState: #statexy -> (#echoxy: -> #initial)) add: $z -> (#echoxy: -> #statexyz).
	(desc newState: #statexyz -> (#echoxy: -> #initial)) add: $z -> (#echoxyz: -> #statexyz).
	desc initialState: #initial.
	^desc