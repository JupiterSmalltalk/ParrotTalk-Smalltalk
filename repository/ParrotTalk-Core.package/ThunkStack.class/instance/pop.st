accessing
pop
	"Remove the head of the stack."
	| layer |
	self isEmpty ifTrue: [^ nil].
	layer := self removeFirst.
	^ layer