Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addQuestion: aQuestion.
	questions add: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser 

]

{ #category : #retrieving }
CuOOra >> calcularPromedioDeVotosPositivos [

^ (self questions sum: [ :q | q cantidadDeVotosPositivos ]) /  self obtenerNuevasPreguntas size.
	
]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #retrieving }
CuOOra >> obtenerNuevasPreguntas [
	
	^ self questions select: [ :each | each soyDeHoy ]
]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
