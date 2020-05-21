Class {
	#name : #PopularQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
PopularQuestionRetriever >> retrieveQuestionsToProcess: aUser [
	
	^ cuoora obtenerNuevasPreguntas 
		select: [ :q | q cantidadDeVotosPositivos >= cuoora calcularPromedioDeVotosPositivos ]
]
