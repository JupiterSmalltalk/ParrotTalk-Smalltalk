examples
example4		"Note: this example should pop up an error notifier during compilation"

	"ProtocolStateCompiler example4 compile"

	| desc |
	desc := self new.
	(desc newState: 0 -> (#echo: -> 0)) add: $x -> (nil -> 1).
	(desc newState: 1 -> (#echox: -> 0)) add: $y -> (nil -> 2).
	(desc newState: 2 -> (#echoxy: -> 0)) add: $z -> (#echoxy: -> 3).
	(desc newState: 3 -> (#echoxy: -> 0)) add: $z -> (#echoxyz: ->3).
	desc initialState: 0.
	^desc