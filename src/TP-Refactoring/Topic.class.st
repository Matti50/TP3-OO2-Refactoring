Class {
	#name : #Topic,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'intance creation' }
Topic class >> name: aName description: aDescription [
	^ self new inicializarConNombre: aName descripcion: aDescription 
]

{ #category : #accessing }
Topic >> addQuestion: aQuetion [
	questions add: aQuetion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #initialization }
Topic >> inicializarConNombre: aName descripcion: aDescription [

questions := OrderedCollection new.
name := aName.
description := aDescription.
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]
