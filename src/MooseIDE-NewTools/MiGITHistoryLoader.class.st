Class {
	#name : #MiGITHistoryLoader,
	#superclass : #Object,
	#instVars : [
		'history'
	],
	#category : #'MooseIDE-NewTools-Inspector'
}

{ #category : #accessing }
MiGITHistoryLoader >> activityFor: aClass since: aDate [
	| activity dates |
	activity := 0.
	dates := self datesFor: aClass.
	dates := dates collect: [ :d | (d < aDate) ifTrue: [ aDate ] ifFalse: [ d ] ].
	(dates
		groupedBy: [ :d | (self monthsBack: d) + 1 ])
		keysAndValuesDo: [ :k :v | activity := activity + ((v size) / k) ].
	^activity
	
]

{ #category : #accessing }
MiGITHistoryLoader >> datesFor: aClass [
	^history
		select: [ :commit | commit includes: aClass ]
		thenCollect: #date
]

{ #category : #accessing }
MiGITHistoryLoader >> history [ 
	^history 
]

{ #category : #'as yet unclassified' }
MiGITHistoryLoader >> loadFile: aFileName [
	history := (NeoJSONReader
		fromString: (aFileName asFileReference readStream contents))
	collect: [ :dict ||classes|
		classes := (dict at: 'files')
			collect: [ :cd |
				(cd at: 'package') -> (cd at: 'file')].
	MiGITHistoryCommit new
		commit: (dict at: 'commit') ;
		date: (dict at: 'date') asDate ;
		classes: classes ;
		yourself ]
]

{ #category : #accessing }
MiGITHistoryLoader >> monthsBack: aDate [
	^((Date today - aDate) asDays / 30) asInteger
]
