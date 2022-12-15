"
A Typist will type into a given page.

typist := Typist onPageNamed: 'Test page' from: thisSnippet database databaseName  .
typist clearPage.
typist typeTextSnippet: 'foobar'.
typist typeCodeSnippet: '3 + 4'.

"
Class {
	#name : #Typist,
	#superclass : #Object,
	#instVars : [
		'page',
		'wordsPerMinute',
		'worker'
	],
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
Typist class >> forPage: aPage [ 
	^ self new page: aPage 
]

{ #category : #accessing }
Typist class >> onPageNamed: aPageName from: aLepiterBaseName [ 

	| database page |
	database := LeDatabasesRegistry default currentLoadedDefaultLogicalDatabase 
				databaseNamed: aLepiterBaseName.
	page := database pageNamed: aPageName.
	^ self forPage: page
]

{ #category : #accessing }
Typist >> addCodeSnippet [
	self schedule: [ self page addSnippet: LePharoSnippet new ]
]

{ #category : #accessing }
Typist >> addTextSnippet [
	self schedule: [ self page addSnippet: LeTextSnippet new ]
]

{ #category : #accessing }
Typist >> clearPage [
	self
		schedule: [ [ self page children notEmpty ]
				whileTrue: [ self page removeSnippet: page children last ] ]
]

{ #category : #accessing }
Typist >> initialize [
	worker := AsyncFutureThreadPoolWorker new.
	worker startup
]

{ #category : #accessing }
Typist >> page [
	^ page
]

{ #category : #accessing }
Typist >> page: aPage [
	page := aPage
]

{ #category : #typing }
Typist >> schedule: aBlock [
	worker schedule: (AsyncPendingFuturePromise new future: aBlock asAsyncFuture)
]

{ #category : #typing }
Typist >> type: aString [
	self
		schedule: [ aString do: [ :char | self page lastChildOrSelf appendText: char asRopedText ] ]
]

{ #category : #typing }
Typist >> type: aString inGroupsOf: groupSize [
	self
		schedule: [ (aString groupsOf: groupSize)
				do: [ :char | self page lastChildOrSelf appendText: char asRopedText ] ]
]

{ #category : #typing }
Typist >> typeFast: aString [
	self type: aString inGroupsOf: 2
]

{ #category : #typing }
Typist >> typeFaster: aString [
	self type: aString inGroupsOf: 4
]
