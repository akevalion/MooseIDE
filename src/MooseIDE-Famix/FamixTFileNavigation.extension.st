Extension { #name : #FamixTFileNavigation }

{ #category : #'*MooseIDE-Famix' }
FamixTFileNavigation >> indexOfLine: lineNb column: columnNb inText: aString [
	| index line |
	index := 0.
	line := 1.
	aString lineIndicesDo: [ :ignore1 :ignore2 :endOfLine |
		(line < lineNb)
		ifTrue: [ index := endOfLine ]
		ifFalse: [ ^index + columnNb ].
		line := line + 1.
	]
]

{ #category : #'*MooseIDE-Famix' }
FamixTFileNavigation >> intervalInFileAnchor: parentAnchor [
	"assumes parentAnchor is also a TFileNavigation"
	| parentText |

	self safeguardValid ifFalse: [ ^nil ].

	(self fileName = parentAnchor fileName) ifFalse: [ ^nil ].

	parentText := parentAnchor sourceText.

	parentAnchor startLine ifNil: [ parentAnchor startLine: 1 ].
	parentAnchor endLine ifNil: [ parentAnchor endLine: parentText lineCount ].
	
	self startLine ifNil: [ self startLine: 1 ].
	self endLine ifNil: [ self endLine: parentText lineCount ].
	
	(parentAnchor startLine > self startLine) ifTrue: [ ^nil ].
	(parentAnchor endLine < self endLine) ifTrue: [ ^nil ].

	parentAnchor startColumn ifNil: [ parentAnchor startColumn: 1 ].
	parentAnchor endColumn
	ifNil: [ parentAnchor endColumn: (parentText lines at: parentAnchor endLine) size ].
	
	self startColumn ifNil: [ self startColumn: 1 ].
	self endColumn
	ifNil: [ self endColumn: (parentText lines at: self endLine) size ].
	
	((parentAnchor startLine = self startLine) and:
	(parentAnchor startColumn > self startColumn))
	ifTrue: [ ^nil ].

	((parentAnchor endLine = self endLine) and:
	(parentAnchor endColumn < self endColumn))
	ifTrue: [ ^nil ].

	^Interval
	from: (self indexOfLine: self startLine column: self startColumn inText: parentText)
	to: (self indexOfLine: self endLine column: self endColumn inText: parentText)
]

{ #category : #'*MooseIDE-Famix' }
FamixTFileNavigation >> intervalsInFileAnchor: parentAnchor [

	^(self intervalInFileAnchor: parentAnchor)
		ifNil: [ #() ]
		ifNotNil: [ :interval | { interval } ]

]

{ #category : #'*MooseIDE-Famix' }
FamixTFileNavigation >> safeguardValid [
	"invalid if start and end or numbers and start > end"

	startLine ifNil: [^true].
	endLine ifNil: [^true].
	(startLine > endLine) ifTrue: [ ^false ].

	(startLine = endLine) ifTrue: [	
		startColumn ifNil: [^true].
		endColumn ifNil: [^true].
		(startColumn > endColumn) ifTrue: [ ^false ].
	].
	^true
]

{ #category : #'*MooseIDE-Famix' }
FamixTFileNavigation >> textIntervalsForChild: aChildEntity [

	self safeguardValid ifFalse: [ ^#() ].

	^aChildEntity sourceAnchor
		ifNil: [ #() ]
		ifNotNil: [ :childAnchor |
			childAnchor intervalsInFileAnchor: self]
]
