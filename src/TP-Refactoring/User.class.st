Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'answers',
		'username',
		'password',
		'topics',
		'following',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new inicializarConUsername: aUsername password: aPassword  questionRetriever: aQuestionRetriever ;
		yourself
]

{ #category : #accessing }
User >> addAnswer: anAnswer [
	answers add: anAnswer 

]

{ #category : #accessing }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #accessing }
User >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #accessing }
User >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #accessing }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #initialization }
User >> inicializarConUsername: anUserName password: aPassword questionRetriever: aQuestionRetriever [ 

	questions := OrderedCollection new.  
	answers := OrderedCollection new. 
	topics := OrderedCollection new. 
	following := OrderedCollection new. 
	votes := OrderedCollection new.	
	username := anUserName.
	password := aPassword.
	questionRetriever := aQuestionRetriever.
]

{ #category : #retrieving }
User >> obtenerPreguntasDeSeguidores [

	^ following  flatCollect: [ :each | each questions ]
]

{ #category : #retrieving }
User >> obtenerPreguntasDeTopicos [

	
	^ self topics flatCollect: [ :each | each questions ]
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions: self.
]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #accessing }
User >> votes [
	^ votes
]
