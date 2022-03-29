Class {
	#name : #MiTextIntervalsTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'MooseIDE-Tests-Browsers'
}

{ #category : #running }
MiTextIntervalsTest >> setUp [
	model := MiSourceTextBrowserModel new
]

{ #category : #tests }
MiTextIntervalsTest >> testIdentifierIntervalsForChildInsideIndexedFileAnchor [
	| childEntity parentAnchor intervals |
	model displayedText: 'code of aClass {
	code of aMethod()
}'.
	parentAnchor := (FamixStubIndexedFileAnchor new
			startPos: 1 ;
			endPos: model displayedText size).
	childEntity := FamixStMethod new
		name: 'aMethod' ;
		sourceAnchor: (FamixStubIndexedFileAnchor new
			startPos: 18 ;
			endPos: 36).
		
	intervals := model identifierIntervalsFor: childEntity inside: parentAnchor.
	self assert: intervals size equals: 1.
	self assert: intervals first equals: (Interval from: 27 to: 33)

]

{ #category : #tests }
MiTextIntervalsTest >> testIdentifierIntervalsForChildInsideMultipleFileAnchor [
	| childEntity parentAnchor intervals |
	model displayedText: 'code of aClass {
	code of aMethod()
}'.
	parentAnchor := FamixStubMultipleFileAnchor new.
	parentAnchor addSourceAnchor:
		(FamixStubFileAnchor new
			fileName: 'file1.h').
	parentAnchor addSourceAnchor:
		(FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 2 ;
			startColumn: 2 ;
			endLine: 3 ;
			endColumn: 1).

	childEntity := FamixStMethod new
		name: 'aMethod'.
	childEntity 
		sourceAnchor: (FamixStubMultipleFileAnchor new
		addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.h' ;
			startLine: 2 ;
			startColumn: 2 ;
			endLine: 2 ;
			endColumn: 18) ;
		addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 2 ;
			startColumn: 1)).
		
	intervals := model identifierIntervalsFor: childEntity inside: parentAnchor.
	self assert: intervals size equals: 2.
	self assert: intervals first equals: (Interval from: 18 to: 35).
	self assert: intervals first equals: (Interval from: 18 to: 37)

]

{ #category : #tests }
MiTextIntervalsTest >> testIndexOfLineColumnInText [
	| text stub |
	text :=
'this is a
somewhat
long text
'.

	stub := FamixStubFileAnchor new.
	self assert: (stub indexOfLine: 1 column: 5 inText: text) equals: 5.
	self assert: (stub indexOfLine: 2 column: 5 inText: text) equals: 15.
	self assert: (stub indexOfLine: 3 column: 1 inText: text) equals: 20.
]

{ #category : #tests }
MiTextIntervalsTest >> testIntervalsInFileAnchor [
	| parentFileAnchor childMultipleAnchor intervals text |
	text :=
'this is a
somewhat
long text
'.

	parentFileAnchor := FamixStubFileAnchor new
			fileName: 'file1.h' ;
			source: text.

	childMultipleAnchor := FamixStubMultipleFileAnchor new.
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.h' ;
			startLine: 2 ;
			startColumn: 1 ;
			endLine: 2 ;
			endColumn: 8).
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 2 ;
			startColumn: 1 ;
			endLine: 2 ;
			endColumn: 8).
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 2 ;
			startColumn: 1).

	intervals:=childMultipleAnchor intervalsInFileAnchor: parentFileAnchor .
		
	self assert: intervals size equals: 1.
	self assert: intervals first equals: (Interval from: 11 to: 18).
	
	parentFileAnchor :=
		(FamixStubFileAnchor new
			fileName: 'file1.c' ;
			source: text ;
			startLine: 2 ;
			startColumn: 1 ;
			endLine: 3 ;
			endColumn: 9).

]

{ #category : #tests }
MiTextIntervalsTest >> testIntervalsInFileAnchor1 [
	| parentFileAnchor childMultipleAnchor intervals text |
	text :=
'this is a
somewhat
long text
'.

	parentFileAnchor := FamixStubFileAnchor new
			fileName: 'file1.h' ;
			source: text.

	childMultipleAnchor := FamixStubMultipleFileAnchor new.
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.h' ;
			startLine: 2 ;
			startColumn: 1 ;
			endLine: 2 ;
			endColumn: 8).
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 2 ;
			startColumn: 1).

	intervals:=childMultipleAnchor intervalsInFileAnchor: parentFileAnchor .
		
	self assert: intervals size equals: 1.
	self assert: intervals first equals: (Interval from: 11 to: 18).
	
]

{ #category : #tests }
MiTextIntervalsTest >> testIntervalsInFileAnchor2 [
	| parentFileAnchor childMultipleAnchor intervals text |
	text :=
'this is a
somewhat
long text
'.

	parentFileAnchor := FamixStubFileAnchor new
			fileName: 'file1.c' ;
			source: text.

	childMultipleAnchor := FamixStubMultipleFileAnchor new.
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 2 ;
			startColumn: 1 ;
			endLine: 3 ;
			endColumn: 4).
	childMultipleAnchor addSourceAnchor: (FamixStubFileAnchor new
			fileName: 'file1.c' ;
			startLine: 3 ;
			startColumn: 1).

	intervals:=childMultipleAnchor intervalsInFileAnchor: parentFileAnchor .
		
	self assert: intervals size equals: 2.
	self assert: intervals first equals: (Interval from: 11 to: 23).
	self assert: intervals second equals: (Interval from: 20 to: 28).


]
