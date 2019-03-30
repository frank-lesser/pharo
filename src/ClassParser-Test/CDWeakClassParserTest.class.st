Class {
	#name : #CDWeakClassParserTest,
	#superclass : #CDClassDefinitionParserTest,
	#category : #'ClassParser-Test'
}

{ #category : #helpers }
CDWeakClassParserTest >> classDefinitionString [

	^ '{superclassName} weakSubclass: #{classname}
		instanceVariableNames: ''{instvar1} {instvar2}''
		classVariableNames: ''{classvar1} {classvar2}''
		package: #MyPackage'
			format: { 
				'classname' -> self className.
				'superclassName' -> self superclassName.
				'instvar1' -> self firstInstanceVariableName.
				'instvar2' -> self secondInstanceVariableName.
				'classvar1' -> self firstClassVariableName.
				'classvar2' -> self secondClassVariableName. } asDictionary
]

{ #category : #helpers }
CDWeakClassParserTest >> testWeakClassIsWeak [

	self assert: classDefinition isWeak
]