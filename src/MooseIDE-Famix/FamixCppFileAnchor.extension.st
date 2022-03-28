Extension { #name : #FamixCppFileAnchor }

{ #category : #'*MooseIDE-Famix' }
FamixCppFileAnchor >> textIntervalsForChild: aChildEntity [
	"Assume child anchor is a FamixCppFileAnchor just like receiver"

	"^aChildEntity sourceAnchor
		ifNotNil: [ :anchor |
			Interval from: (anchor startPos - startPos + 1) to: (anchor endPos - startPos + 1)
		]"
	
	self shouldBeImplemented 
]
