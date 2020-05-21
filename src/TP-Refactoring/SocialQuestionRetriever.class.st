Class {
	#name : #SocialQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialQuestionRetriever >> retrieveQuestionsToProcess: aUser [

^ aUser obtenerPreguntasDeSeguidores.
]
