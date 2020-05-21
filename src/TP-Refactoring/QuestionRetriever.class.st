Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	|  temp   |
	
	 temp :=((self retrieveQuestionsToProcess: aUser)
	asSortedCollection: [ :a :b | a cantidadDeVotosPositivos  > b cantidadDeVotosPositivos ]).
	
	^ (temp last: (100 min: temp size)) reject: [ :q | q user = aUser ].
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestionsToProcess: aUser [
"Si no lo ponemos aca pharo tira error"
^ self subclassResponsibility 
]
