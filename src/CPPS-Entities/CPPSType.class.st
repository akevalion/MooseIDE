"
TODO
"
Class {
	#name : #CPPSType,
	#superclass : #CPPSContainerEntity,
	#traits : 'FamixTClass + FamixTHasModifiers + FamixTWithTypes',
	#classTraits : 'FamixTClass classTrait + FamixTHasModifiers classTrait + FamixTWithTypes classTrait',
	#category : #'CPPS-Entities-Entities'
}

{ #category : #deprecated }
CPPSType >> belongsTo [
	^ self parentPackage
]
