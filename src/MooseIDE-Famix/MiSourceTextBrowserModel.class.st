"
I am a model for the SourceTextBrowser

I take care of getting the source code for an entity and ""formatting"" it (actually finding where to apply formats: the highlights)

I also keep the displayedEntity and the selectedEntity (in the source code) if any
"
Class {
	#name : #MiSourceTextBrowserModel,
	#superclass : #Object,
	#instVars : [
		'browser',
		'displayedEntity',
		'displayedText',
		'selectedEntity',
		'highlights'
	],
	#category : #'MooseIDE-Famix-SourceText'
}

{ #category : #highlights }
MiSourceTextBrowserModel >> addErrorHighlightInterval: anInterval [
	| highlight |
	highlight := MiSourceTextErrorHighlight new
		interval: anInterval ;
		yourself.
	self addHighlight: highlight.
	^highlight
]

{ #category : #highlights }
MiSourceTextBrowserModel >> addHighlight: aSourceTextHighlight [

	highlights add: aSourceTextHighlight
]

{ #category : #highlights }
MiSourceTextBrowserModel >> addIdentifierHighlightFor: aChildEntity interval: childInterval [
	| highlight |
	highlight := MiSourceTextIdentifierHighlight new
		highlightedEntity: aChildEntity ;
		interval: childInterval ;
		restrictIntervalTo: aChildEntity name in: self displayedText ;
		yourself.
	self addHighlight: highlight.
	^highlight 
]

{ #category : #highlights }
MiSourceTextBrowserModel >> addNullHighlightFor: aChildEntity [
	| highlight |
	highlight := MiSourceTextNullHighlight new
		highlightedEntity: aChildEntity;
		yourself.
	self addHighlight: highlight.
	^highlight
]

{ #category : #highlights }
MiSourceTextBrowserModel >> addTagHighlightFor: aChildEntity interval: childInterval [
	| highlight |
	highlight := MiSourceTextTagHighlight new
		highlightedEntity: aChildEntity ;
		interval: childInterval ;
		yourself.
	self addHighlight: highlight.
	^highlight

]

{ #category : #accessing }
MiSourceTextBrowserModel >> browser: aMiBrowser [
	browser := aMiBrowser 
]

{ #category : #accessing }
MiSourceTextBrowserModel >> displayedEntity [
	"the entity which source code is shown in the browser"
	^ displayedEntity
]

{ #category : #accessing }
MiSourceTextBrowserModel >> displayedEntity: anObject [
	displayedEntity := anObject.
	selectedEntity := anObject.
	self preformatDisplayedEntitySource 
]

{ #category : #accessing }
MiSourceTextBrowserModel >> displayedText [
	^displayedText
]

{ #category : #accessing }
MiSourceTextBrowserModel >> displayedText: aString [
	displayedText := aString.
]

{ #category : #highlights }
MiSourceTextBrowserModel >> gatherHighlights [

	self displayedEntity children do: [ :child |
		self gatherHighlightsForEntity: child
	]
]

{ #category : #highlights }
MiSourceTextBrowserModel >> gatherHighlightsForEntity: aChildEntity [
"1haltIf: [ aChildEntity name = 'checkTimeIncrLAHT' ]."

	self displayedEntity sourceAnchor
	ifNotNil: [ :referenceAnchor |
		(referenceAnchor textIntervalsForChild: aChildEntity)
		do: [ :childInterval | 
			self addIdentifierHighlightFor: aChildEntity interval: childInterval.
			aChildEntity tags ifNotEmpty: [ :childTags |
				(self addTagHighlightFor: childTags anyOne interval: childInterval)
					restrictIntervalTo: aChildEntity name in: self displayedText.
			]
		].
		aChildEntity children do: [ :childChild |
			self gatherHighlightsForEntity: childChild ].

		aChildEntity queryAllOutgoing do: [:mseAssoc |
			mseAssoc allTargets do: [ :target |
				target tags do: [ :assocTag |
					(referenceAnchor textIntervalsForChild: mseAssoc)
					do: [ :assocInterval |
						self addTagHighlightFor: assocTag interval: assocInterval.
					]
				]
			]
		]
	]
]

{ #category : #accessing }
MiSourceTextBrowserModel >> highlights [
	^highlights
]

{ #category : #formatting }
MiSourceTextBrowserModel >> noSourceCodeFor: anEntity [
	displayedText := ('There is no source code to show for {1}'
		format: { anEntity name }).

	self addErrorHighlightInterval: (Interval from: 37 to: displayedText size)
]

{ #category : #formatting }
MiSourceTextBrowserModel >> preformatDisplayedEntitySource [
	self resetHighlights.
	displayedEntity sourceText
		ifEmpty: [ self noSourceCodeFor: displayedEntity ]
		ifNotEmpty: [ :code | self preformatSource: code ]

]

{ #category : #formatting }
MiSourceTextBrowserModel >> preformatSource: aString [
	displayedText := aString.
	self gatherHighlights
]

{ #category : #highlights }
MiSourceTextBrowserModel >> resetHighlights [

	highlights := OrderedCollection new
]

{ #category : #accessing }
MiSourceTextBrowserModel >> selectedEntity [
	^selectedEntity
]

{ #category : #accessing }
MiSourceTextBrowserModel >> selectedEntity: anEntity [
	selectedEntity := anEntity.
	browser updateToolbar 
]
