Extension { #name : #FamixTMultipleFileAnchor }

{ #category : #'*MooseIDE-Famix' }
FamixTMultipleFileAnchor >> intervalsInFileAnchor: parentAnchor [

	^self fileAnchors
	collect: [ :fileAnchor | fileAnchor intervalInFileAnchor: parentAnchor ]
	thenReject: #isNil
]

{ #category : #'*MooseIDE-Famix' }
FamixTMultipleFileAnchor >> textIntervalsForChild: aChildEntity [

	^self fileAnchors flatCollect: [ :fileAnchor |
		fileAnchor textIntervalsForChild: aChildEntity
	]
]
