Class {
	#name : #Typist,
	#superclass : #Object,
	#instVars : [
		'page',
		'wordsPerMinute'
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
Typist >> addCodeSnippet: aString [
	self page addSnippet: (LePharoSnippet new code: aString)
]

{ #category : #accessing }
Typist >> addTextSnippet: aString [
	self page addSnippet: (LeTextSnippet new string: aString)
]

{ #category : #accessing }
Typist >> clearPage [
	self page children items: {}.
	"Hack"
	self page addSnippet: (LeTextSnippet new string: '').
	self page children items: {}.
]

{ #category : #constants }
Typist >> defaultWordsPerMinute [
	^ 180
]

{ #category : #accessing }
Typist >> initialize [
	self typeFast
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
Typist >> secondsPerCharacter [
	^ 60 / (self wordsPerMinute * 5)
]

{ #category : #typing }
Typist >> typeCodeSnippet: aString [
	self typeText: aString intoNewSnippet: LePharoSnippet new
]

{ #category : #accessing }
Typist >> typeFast [
	self wordsPerMinute: 2 * self defaultWordsPerMinute
]

{ #category : #accessing }
Typist >> typeFaster [
	self wordsPerMinute: 2 * self wordsPerMinute
]

{ #category : #accessing }
Typist >> typeSlow [
	self wordsPerMinute: self defaultWordsPerMinute
]

{ #category : #typing }
Typist >> typeText: aString intoNewSnippet: aSnippet [
	self page addSnippet: aSnippet.
	[ aString
		do: [ :char | 
			aSnippet appendText: char asRopedText.
			self secondsPerCharacter seconds asDelay wait ] ] fork
]

{ #category : #typing }
Typist >> typeTextSnippet: aString [
	self typeText: aString intoNewSnippet: LeTextSnippet new
]

{ #category : #accessing }
Typist >> wordsPerMinute [
	^ wordsPerMinute
]

{ #category : #accessing }
Typist >> wordsPerMinute: aNumber [

	wordsPerMinute := aNumber
]
