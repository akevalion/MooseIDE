Extension { #name : #FamixTSourceEntity }

{ #category : #'*MooseIDE-Famix' }
FamixTSourceEntity >> textIntervalsForChild: aChildEntity [
	"receiver is the parent of aChildEntity,
	returns the child code interval within the receiver's source text"

	^self sourceAnchor
		ifNotNil: [ :anchor | anchor textIntervalsForChild: aChildEntity ]
]
