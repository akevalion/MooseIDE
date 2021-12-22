"
Represents one commit in git

## Instance variables:
- commit: hashtag of the commit
- date: pharo date of the commit
- classes: list of associations ""packageName -> className"" of the files modified in this commit

## API
- `#includes: aFamixClass`: checks whether this class was modified in the commit
"
Class {
	#name : #MiGITHistoryCommit,
	#superclass : #Object,
	#instVars : [
		'commit',
		'date',
		'classes'
	],
	#category : #'MooseIDE-NewTools-Inspector'
}

{ #category : #accessing }
MiGITHistoryCommit >> classes [

	^ classes
]

{ #category : #accessing }
MiGITHistoryCommit >> classes: anObject [

	classes := anObject
]

{ #category : #accessing }
MiGITHistoryCommit >> commit [

	^ commit
]

{ #category : #accessing }
MiGITHistoryCommit >> commit: anObject [

	commit := anObject
]

{ #category : #accessing }
MiGITHistoryCommit >> date [

	^ date
]

{ #category : #accessing }
MiGITHistoryCommit >> date: anObject [

	date := anObject
]

{ #category : #testing }
MiGITHistoryCommit >> includes: aFamixClass [
	| pckg class |
	pckg := aFamixClass parentPackage name.
	class := aFamixClass name.
	^classes
		detect: [ :assoc | (assoc key = pckg) and: [assoc value = class] ]
		ifOne: [ :found | true ]
		ifNone: [ false ]
]
