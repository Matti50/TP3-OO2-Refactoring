Class {
	#name : #Question,
	#superclass : #Post,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ (self newConUser: aUser description: aDescription) inicializarConTitle: title
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ ((self newConUser: aUser description: aDescription) inicializarConTitle: title) addTopic: aTopic
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'as yet unclassified' }
Question >> inicializarConTitle: aTitle [

title:= aTitle.
answers := OrderedCollection new.
topics:= OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Question >> soyDeHoy [

^ self timestamp asDate = Date today.
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
