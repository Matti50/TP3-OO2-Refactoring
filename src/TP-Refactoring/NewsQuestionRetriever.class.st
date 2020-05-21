Class {
	#name : #NewsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsQuestionRetriever >> retrieveQuestionsToProcess: aUser [

^ cuoora obtenerNuevasPreguntas 

]
