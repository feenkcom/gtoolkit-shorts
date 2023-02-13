"
A Typist will type into a given page.

typist := Typist onPageNamed: 'Test page' from: thisSnippet database databaseName  .
typist clearPage.

typist addTextSnippet.
typist type: 'Typing at normal speed.'.

typist addTextSnippet.
typist typeFaster.
typist type: 'Typing quite fast.'.

typist addTextSnippet.
typist typeFaster.
typist type: 'And typing very fast.'.

typist addTextSnippet.
typist typeQuickly: 'Now we should pause for 2 seconds.'.
typist typeQuickly: ' (Doesn''t work ....?!).'.
typist pauseFor: 2 seconds.

typist addTextSnippet.
typist typeQuickly: 'Typing quickly (2 chars at a time).'.

typist addTextSnippet.
typist typeVeryQuickly: 'Typing very quickly (4 chars at a time).'.


typist addCodeSnippet.
typist type: 'Smalltalk compiler evaluate: ''3 + 4'''.

typist addTextSnippet.
typist typeQuickly: 'Quickly:'.
typist addCodeSnippet.
typist typeQuickly: 'Smalltalk compiler evaluate: ''3 + 4'''.


typist addTextSnippet.
typist typeQuickly: 'Very quickly:'.
typist addCodeSnippet.
typist typeVeryQuickly: 'Smalltalk compiler evaluate: ''3 + 4'''


"
Class {
	#name : #Typist,
	#superclass : #Object,
	#instVars : [
		'page',
		'wordsPerMinute',
		'worker',
		'delay'
	],
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #'instance creation' }
Typist class >> forPage: aPage [ 
	^ self new page: aPage 
]

{ #category : #'instance creation' }
Typist class >> onPageNamed: aPageName from: aLepiterBaseName [ 
	| database page |
	database := LeDatabasesRegistry default currentLoadedDefaultLogicalDatabase 
				databaseNamed: aLepiterBaseName.
	page := database pageNamed: aPageName.
	^ self forPage: page
]

{ #category : #editing }
Typist >> addCodeSnippet [
	self schedule: [ self page addSnippet: LePharoSnippet new ]
]

{ #category : #editing }
Typist >> addExampleSnippet [
	self schedule: [ self page addSnippet: LeExampleSnippet new ]
]

{ #category : #editing }
Typist >> addTextSnippet [
	self schedule: [ self page addSnippet: LeTextSnippet new ]
]

{ #category : #editing }
Typist >> clearPage [
	self
		schedule: [ [ self page children notEmpty ]
				whileTrue: [ self page removeSnippet: page children last ] ]
]

{ #category : #constants }
Typist >> defaultWordsPerMinute [
	^ 180
]

{ #category : #typing }
Typist >> delay [
	^ delay
]

{ #category : #accessing }
Typist >> delay: anObject [

	delay := anObject
]

{ #category : #initialization }
Typist >> initialize [
	worker := AsyncFutureThreadPoolWorker new.
	worker startup.
	self wordPerMinute: self defaultWordsPerMinute
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
Typist >> pauseFor: aDuration [
	self schedule: [ aDuration delay asDelay wait ]
]

{ #category : #typing }
Typist >> schedule: aBlock [
	worker schedule: (AsyncPendingFuturePromise new future: aBlock asAsyncFuture)
]

{ #category : #scheduling }
Typist >> stop [
	worker shutDown
]

{ #category : #typing }
Typist >> type: aString [
	self
		schedule: [ aString
				do: [ :char | 
					self page lastChildOrSelf appendText: char asRopedText.
					self delay asDelay wait ] ]
]

{ #category : #typing }
Typist >> type: aString inGroupsOf: groupSize [
	self
		schedule: [ (aString groupsOf: groupSize)
				do: [ :char | self page lastChildOrSelf appendText: char asRopedText ] ]
]

{ #category : #typing }
Typist >> typeFaster [
	self schedule: [ self delay: self delay / 2 ]
]

{ #category : #typing }
Typist >> typeQuickly: aString [
	self type: aString inGroupsOf: 2
]

{ #category : #typing }
Typist >> typeSlow [
	self schedule: [ self wordPerMinute: self defaultWordsPerMinute ]
]

{ #category : #typing }
Typist >> typeSlower [
	self schedule: [ self delay: self delay * 2 ]
]

{ #category : #typing }
Typist >> typeVeryQuickly: aString [
	self type: aString inGroupsOf: 8
]

{ #category : #accessing }
Typist >> wordPerMinute: aNumber [
	self delay: (60000 / (aNumber * 5)) rounded milliSeconds
]
