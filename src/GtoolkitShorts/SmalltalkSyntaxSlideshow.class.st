Class {
	#name : #SmalltalkSyntaxSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
SmalltalkSyntaxSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> binaryMessages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #binaryMessages:);
		pageNamed: 'Binary messages' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocks: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #blocks:);
		pageNamed: 'Blocks' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithArguments: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #blocksWithArguments:);
		pageNamed: 'Blocks with arguments' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithMultipleArguments: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #blocksWithMultipleArguments:);
		pageNamed: 'Blocks with multiple arguments' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> byteArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #byteArrays:);
		pageNamed: 'Byte arrays' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> cascades: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #cascades:);
		pageNamed: 'Cascades' from: self myLepiterDB
]

{ #category : #dormant }
SmalltalkSyntaxSlideshow >> changingEvaluationOrder: aSlide [
	"<gtSlide>"
	^ aSlide lepiterPage
		priority: (self priorityFor: #changingEvaluationOrder:);
		pageNamed: 'Changing evaluation order' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> characters: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #characters:);
		pageNamed: 'Characters' from: self myLepiterDB
]

{ #category : #dormant }
SmalltalkSyntaxSlideshow >> classesAndMethodsHeading: aSlide [
	"<gtSlide>"
	^ aSlide paragraph
		priority: (self priorityFor: #classesAndMethodsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Classes and Methods');
		paragraphWithFormat: (self
				asBigCode: '

HelloWorld new hello
') 
]

{ #category : #example }
SmalltalkSyntaxSlideshow >> coderElementExample [
	<gtExample>
	^ self coderElementFor: '3+4'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> controlConstructs: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #controlConstructs:);
		pageNamed: 'Control constructs' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> creatingClasses: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #creatingClasses:);
		pageNamed: 'Creating classes' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingKeywordMethods: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #definingKeywordMethods:);
		pageNamed: 'Defining keyword methods' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingMethods: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #definingMethods:);
		pageNamed: 'Defining methods' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> dynamicArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #dynamicArrays:);
		pageNamed: 'Dynamic arrays' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> expressionsHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #expressionsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Expressions');
		paragraphWithFormat: (self
				asBigCode: '

3 factorial

3 + 4

2 raisedTo: 3
') 
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> keywordMessages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #keywordMessages:);
		pageNamed: 'Keyword messages' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> literalArrays: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #literalArrays:);
		pageNamed: 'Literal arrays' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> literalsHeading: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #literalsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Literals');
		paragraphWithFormat: (self
				asBigCode: '
				
3 

''hello'' 

#foo
') 
]

{ #category : #constants }
SmalltalkSyntaxSlideshow >> myLepiterDB [
	^ 'feenkcom/gtoolkit-shorts/lepiter'
]

{ #category : #dormant }
SmalltalkSyntaxSlideshow >> nestedLiteralArrays: aSlide [
	"<gtSlide>"
	^ aSlide lepiterPage
		priority: (self priorityFor: #nestedLiteralArrays:);
		pageNamed: 'Nested literal arrays' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> numbers: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #numbers:);
		pageNamed: 'Numbers' from: self myLepiterDB
]

{ #category : #constants }
SmalltalkSyntaxSlideshow >> picturesDirectoryPath [
	^ Path * 'feenkcom' / 'gtoolkit-shorts' / 'doc'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> postCardImageSlide: aSlide [
	<gtSlide>
	^ aSlide filePicture
		priority: (self priorityFor: #postCardImageSlide:);
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-shorts/doc/postcardsyntax.png')
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> postcardSyntaxExplanation: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #postcardSyntaxExplanation:);
		element: [
			((Postcard>>#exampleWithNumber:) 
				gtViewNodesExplanationWithLinksFor: GtPhlowEmptyView new) 
					asElementDo: [:e | e ]]
					";
		newFadedText: ('Let''s put it all together. Take a look at the method below. Hover over the syntactical parts on the left to understand how they map on the different parts of the method.' asRopedText fontSize: 70)"
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> pragmas: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #pragmas:);
		pageNamed: 'Pragmas' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> precedence: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #precedence:);
		pageNamed: 'Precedence' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> readAloud: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #readAloud:);
		pageNamed: 'Smalltalk is designed to be read aloud' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> reservedWords: aSlide [
	<gtSlide>
	^ aSlide paragraph
		priority: (self priorityFor: #reservedWords:);
		subtitleWithFormat: (self asSubtitle: 'Reserved words');
		paragraphWithFormat: (self
				asBigCode: '

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
		postCardImageSlide:
		readAloud:

		literalsHeading:
			numbers:
			strings:
			characters:
			symbols:
			literalArrays:
			"nestedLiteralArrays:"
			byteArrays:
			reservedWords:

		expressionsHeading:
			unaryMessages:
			binaryMessages:
			keywordMessages:
			precedence:
			"changingEvaluationOrder:"
			cascades:
			dynamicArrays:
		
		"statementsHeading:"
			statements:
			blocks:
			blocksWithArguments:
			blocksWithMultipleArguments:
			controlConstructs:
		
		"classesAndMethodsHeading:"
			creatingClasses:
			definingMethods:
			definingKeywordMethods:
			pragmas:

		postcardSyntaxExplanation:
		
		whatsNext:
	)
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> statements: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #statements:);
		pageNamed: 'Statements' from: self myLepiterDB
]

{ #category : #dormant }
SmalltalkSyntaxSlideshow >> statementsHeading: aSlide [
	"<gtSlide>"
	^ aSlide paragraph
		priority: (self priorityFor: #statementsHeading:);
		subtitleWithFormat: (self asSubtitle: 'Statements');
		paragraphWithFormat: (self
				asBigCode: '

x := 3+4.
y := 3*4
') 
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> strings: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #strings:);
		pageNamed: 'Strings' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> symbols: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #symbols:);
		pageNamed: 'Symbols' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleBottomPadding: 60;
		titleWithFormat: (self asTitle: 'Smalltalk Syntax in 7''')
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> unaryMessages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #unaryMessages:);
		pageNamed: 'Unary messages' from: self myLepiterDB
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> whatsNext: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		elementWeight: 0.5;
		priority: (self priorityFor: #whatsNext:);
		newTextWithFormat: (self asHeader: 'What''s next?') bold
				, (self
						asText: '

See more GT in 7'' videos on YouTube.
Explore GT at gtoolkit.com.');
		"element: [ aSlide world ]"
		element: [ GtFilePictureLiveSlide new
				fileReference: (GtResourcesUtility
						resourceAtPath: self picturesDirectoryPath / 'gt-shorts-playlist.png') ]
]
