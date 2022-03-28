Extension { #name : #FamixCppMultipleFileAnchor }

{ #category : #'*MooseIDE-Famix' }
FamixCppMultipleFileAnchor >> textIntervalsForChild: aChildEntity [
	"Assume child anchor is a FamixTIndexedFileNavigation just like receiver"

	"^aChildEntity sourceAnchor
		ifNotNil: [ :anchor |
			Interval from: (anchor startPos - startPos + 1) to: (anchor endPos - startPos + 1)
		]"
	
	self shouldBeImplemented 
]
