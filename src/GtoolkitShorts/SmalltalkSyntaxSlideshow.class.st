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
SmalltalkSyntaxSlideshow class >> show: aSelector [
	^ self new perform: aSelector with: GtLiveSlide new
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> binaryMessages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #binaryMessages:);
		pageNamed: 'Binary messages' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> blocks: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #blocks:);
		pageNamed: 'Blocks' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> byteArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #byteArrays:);
		pageNamed: 'Byte arrays' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> cascades: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #cascades:);
		pageNamed: 'Cascades' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> changingEvaluationOrder: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #changingEvaluationOrder:);
		pageNamed: 'Changing evaluation order' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> characters: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #characters:);
		pageNamed: 'Characters' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> dynamicArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #dynamicArrays:);
		pageNamed: 'Dynamic arrays' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> expressionsHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #expressionsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Expressions');
		paragraphWithFormat: (self
				asBigText: '

3 factorial

3 + 4

2 raisedTo: 3
') 
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> floats: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #floats:);
		pageNamed: 'Floats' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> integers: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #integers:);
		pageNamed: 'Integers' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> keywordMessages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #keywordMessages:);
		pageNamed: 'Keyword messages' from: self myLepiterDB
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
SmalltalkSyntaxSlideshow >> nestedLiteralArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #nestedLiteralArrays:);
		pageNamed: 'Nested literal arrays' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> postCardImageSlide: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: (self priorityFor: #postCardImageSlide:);
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-shorts/doc/postcardsyntax.png')
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> precedence: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #precedence:);
		pageNamed: 'Precedence' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> radixNumbers: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #radixNumbers:);
		pageNamed: 'Radix numbers' from: self myLepiterDB
]

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> readAloud: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #readAloud:);
		pageNamed: 'Smalltalk is designed to be read aloud' from: self myLepiterDB
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
		titleSlide:
			titleSlideV2:
		postCardImageSlide:
		readAloud:

		literalsHeading:
			integers:
			floats:
			radixNumbers:
			strings:
			characters:
			symbols:
			literalArrays:
			nestedLiteralArrays:
			byteArrays:
			reservedWords:
			blocks:

		expressionsHeading:
			unaryMessages:
			binaryMessages:
			keywordMessages:
			precedence:
			changingEvaluationOrder:
			cascades:
			dynamicArrays:
		
		statementsHeading:
		
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
SmalltalkSyntaxSlideshow >> strings: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #strings:);
		pageNamed: 'Strings' from: self myLepiterDB
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

{ #category : #accessing }
SmalltalkSyntaxSlideshow >> unaryMessages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #unaryMessages:);
		pageNamed: 'Unary messages' from: self myLepiterDB
]
