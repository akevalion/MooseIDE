Class {
	#name : #CPPSRelativeSourceAnchor,
	#superclass : #CPPSEntity,
	#traits : 'FamixTRelativeSourceAnchor',
	#classTraits : 'FamixTRelativeSourceAnchor classTrait',
	#category : #'CPPS-Entities-Entities'
}

{ #category : #meta }
CPPSRelativeSourceAnchor class >> annotation [

	<FMClass: #RelativeSourceAnchor super: #CPPSEntity>
	<package: #'CPPS-Entities'>
	<generated>
	^self
]

{ #category : #testing }
CPPSRelativeSourceAnchor >> startBeforeFileAnchor: aTFileAnchor [
	(self startLine isNil or: [ aTFileAnchor startLine isNil ]) ifTrue: [ ^ false ].
		
	^ aTFileAnchor startLine >= self startLine
]
