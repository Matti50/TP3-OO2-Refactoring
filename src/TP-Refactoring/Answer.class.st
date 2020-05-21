Class {
	#name : #Answer,
	#superclass : #Post,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ (self newConUser: aUser description: anAnswer) question: aQuestion
]

{ #category : #private }
Answer >> question: aQuestion [
	question := aQuestion 
]
