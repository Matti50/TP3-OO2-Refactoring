Class {
	#name : #Post,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Post class >> newConUser: aUser description: aDescription [

^ self new inicializarConUser: aUser description: aDescription 
]

{ #category : #adding }
Post >> addVote: aVote [
	votes add: aVote
]

{ #category : #public }
Post >> cantidadDeVotosPositivos [

^ self positiveVotes size.
]

{ #category : #accessing }
Post >> description [
	^ description
]

{ #category : #initialization }
Post >> inicializarConUser: aUser description: aDescription [

	votes := OrderedCollection new.
	timestamp := DateAndTime now.
	user:= aUser.
	description:= aDescription.
]

{ #category : #public }
Post >> negativeVotes [
	
	^ votes reject: [ :vote | vote isLike ]
]

{ #category : #public }
Post >> positiveVotes [
	
	^ votes select: [ :vote | vote isLike  ]
]

{ #category : #accessing }
Post >> timestamp [
	^ timestamp
]

{ #category : #private }
Post >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Post >> user [
	^ user
]

{ #category : #accessing }
Post >> votes [
	^ votes
]
