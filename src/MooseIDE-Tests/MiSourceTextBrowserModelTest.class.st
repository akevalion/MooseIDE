Class {
	#name : #MiSourceTextBrowserModelTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'MooseIDE-Tests-Browsers'
}

{ #category : #running }
MiSourceTextBrowserModelTest >> setUp [
	model := MiSourceTextBrowserModel new
]

{ #category : #tests }
MiSourceTextBrowserModelTest >> testIdentifierIntervalsForChildInsideIndexedFileAnchor [
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
MiSourceTextBrowserModelTest >> testIdentifierIntervalsForChildInsideMultipleFileAnchor [
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
