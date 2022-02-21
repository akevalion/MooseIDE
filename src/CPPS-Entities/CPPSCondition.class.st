"
TODO
"
Class {
	#name : #CPPSCondition,
	#superclass : #CPPSBlock,
	#category : #'CPPS-Entities-Entities'
}

{ #category : #meta }
CPPSCondition >> annotation [

	<FMClass: #Condition super: #CPPSBlock>
	<package: #'CPPS-Entities'>
	<generated>
	^self
]

{ #category : #display }
CPPSCondition >> nameTranslations [
	^ Dictionary
		with: #english -> 'Block''s condition'
		with: #french -> 'Condition du bloc'
]
