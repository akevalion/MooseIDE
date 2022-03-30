Extension { #name : #FamixTMultipleFileAnchor }

{ #category : #'*MooseIDE-Famix' }
FamixTMultipleFileAnchor >> intervalsInFileAnchor: parentAnchor [

	^self fileAnchors
	collect: [ :fileAnchor | fileAnchor intervalInFileAnchor: parentAnchor ]
	thenReject: #isNil
]

{ #category : #'*MooseIDE-Famix' }
FamixTMultipleFileAnchor >> shiftIntervals: aCollection by: anInteger [
	^aCollection collect: [ :interval |
		Interval
			from: (interval first + anInteger)
			to: (interval last + anInteger)
	]
]

{ #category : #'*MooseIDE-Famix' }
FamixTMultipleFileAnchor >> textIntervalsForChild: aChildEntity [
	| shift |
	^self fileAnchors size > 1
	ifFalse: [ self fileAnchors anyOne textIntervalsForChild: aChildEntity ]
	ifTrue: [
		shift := 0.
		self fileAnchors flatCollect: [ :fileAnchor || intervals |
			shift := shift + (self multipleFilesSourceSeparator: fileAnchor) size.
			intervals := self
				shiftIntervals: (fileAnchor textIntervalsForChild: aChildEntity)
				by: shift.
			shift := shift + fileAnchor sourceText size.
			intervals
	]]
]
