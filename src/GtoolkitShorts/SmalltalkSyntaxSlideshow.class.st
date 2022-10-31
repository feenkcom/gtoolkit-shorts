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
SmalltalkSyntaxSlideshow >> expressionsHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #expressionsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Expressions');
		paragraphWithFormat: (self
				asBigText: '
3 + 4
') 
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> literalArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #literalArrays:);
		pageNamed: 'Literal arrays' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> literalsHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #literalsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Literals');
		paragraphWithFormat: (self
				asBigText: '
3 
''hello'' 
#foo
') 
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
SmalltalkSyntaxSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		#titleSlide:
		#titleSlideV2:
		#postCardImageSlide:
		literalsHeading:
			#numbers:
			#stringsAndCharacters:
			#symbols:
			#literalArrays:
			#reservedWords:
		#expressionsHeading:
		#statementsHeading:
		)
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> statementsHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #statementsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Statements');
		paragraphWithFormat: (self
				asBigText: '
x := 3+4.
y := 3*4
') 
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

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> titleSlideV2: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlideV2:);
		titleBottomPadding: 60;
		titleWithFormat: (self asTitle: 'Smalltalk Syntax in 7"')
]
