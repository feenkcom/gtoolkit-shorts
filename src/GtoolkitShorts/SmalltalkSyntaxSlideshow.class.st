Class {
	#name : #SmalltalkSyntaxSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
SmalltalkSyntaxSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> literalArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #literalArrays:);
		pageNamed: 'Literal arrays' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> myLepiterDB [
	^ 'feenkcom/gtoolkit-shorts/lepiter'
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> numbers: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #numbers:);
		pageNamed: 'Numbers' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> pages [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		#titleSlide:
		#postCardImageSlide:
		#numbers:
		#stringsAndCharacters:
		#symbols:
		#literalArrays:
		#reservedWords:
		)
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> postCardImageSlide: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: (self priorityFor: #postCardImageSlide:);
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-shorts/doc/Pharo_syntax_postcard.svg.png')
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> reservedWords: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #reservedWords:);
		subtitleWithFormat: (self asSubtitle: 'Reserved words');
		paragraphWithFormat: (self
				asBigText: '

true false nil

self super

thisContext')
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> stringsAndCharacters: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #stringsAndCharacters:);
		pageNamed: 'Strings and Characters' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> symbols: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #symbols:);
		pageNamed: 'Symbols' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 60;
		titleWithFormat: (self asTitle: 'A Guided Tour of Smalltalk Syntax')
		";
		subtitleWithFormat: (self asBigText: '@onierstrasz — feenk.com')"
]
