"
```
SmalltalkSyntaxSlideshow show
```

"
Class {
	#name : #SmalltalkSyntaxSlideshow,
	#superclass : #GtShortSlideShow,
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
	^ aSlide headingAndCode
		priority: (self priorityFor: #binaryMessages:);
		heading: 'Binary messages';
		addCodeSnippet: '3 + 4 '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocks: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #blocks:);
		heading: 'Blocks';
		addCodeSnippet: '[ 3 + 4 ]';
		addCodeSnippet: '[ 3 + 4 ] value '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithArguments: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #blocksWithArguments:);
		heading: 'Blocks with arguments';
		addCodeSnippet: '[ :n | n + 1 ] value: 41'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithMultipleArguments: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #blocksWithMultipleArguments:);
		heading: 'Blocks with multiple arguments';
		addCodeSnippet: '[ :a :b |
	| c |
	c := (a squared + b squared) sqrt 
] value: 3 value: 4'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> byteArrays: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #byteArrays:);
		heading: 'Byte arrays';
		addCodeSnippet: '#[1 2 2r11]';
		addCodeSnippet: '#[1 $a foo ''Hello World''] "Not valid"'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> cascades: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #cascades:);
		heading: 'Cascades' ;
		addCodeSnippet: 'OrderedCollection new
	add: 3;
	add: 4;
	add: 6;
	reversed '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> characters: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #characters:);
		heading: 'Characters';
		addCodeSnippet: '$a';
		addCodeSnippet: 'Character tab '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> closing: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #closing:);
		titleWithFormat: ('glamoroustoolkit' asRopedText
				fontSize: 80;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 'glamorous' size + 1 to: t size) bold ];
				yourself);
		subtitleWithFormat: ('gtoolkit.com' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> controlConstructs: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #controlConstructs:);
		heading: 'Control constructs';
		addCodeSnippet: 'Smalltalk allClasses size < 1000
	ifTrue: [ ''not so many'' ]
	ifFalse: [ ''quite a few!'' ]'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> creatingClasses: aSlide [
	<gtSlide>
	self removeClass: #HelloWorld.
	^ aSlide headingAndCode
		priority: (self priorityFor: #creatingClasses:);
		heading: 'Creating classes';
		addCodeSnippet: 'Object
	subclass: #HelloWorld
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: #Hello';
		onEveryAddToSceneGraphDo: [ self removeClass: #HelloWorld ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingKeywordMethods: aSlide [
	<gtSlide>
	self ensureEmptyClass: #HelloWorld inPackage: #Hello.
	self fileIn: 'Hello-2-HelloWithArgument.st'.
	^ aSlide headingAndCode
		priority: (self priorityFor: #definingKeywordMethods:);
		heading: 'Defining keyword methods';
		addCodeSnippet: 'HelloWorld new hello: ''Oscar''';
		onEveryAddToSceneGraphDo: [ self ensureEmptyClass: #HelloWorld inPackage: #Hello.
			self fileIn: 'Hello-2-HelloWithArgument.st' ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingMethods: aSlide [
	<gtSlide>
	self ensureEmptyClass: #HelloWorld inPackage: #Hello.
	^ aSlide headingAndCode
		priority: (self priorityFor: #definingMethods:);
		heading: 'Defining methods';
		addCodeSnippet: 'HelloWorld new hello ';
		onEveryAddToSceneGraphDo: [ self ensureEmptyClass: #HelloWorld inPackage: #Hello ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingMethodsAfter: aSlide [
	"NB: we should open the hello world method code. 
	This can only be done programmatically with a Scripter script.
	See: GtCoderSlideshow>>exampleMethodsExplanationWithLinks"

	<gtSlide>
	self ensureEmptyClass: #HelloWorld inPackage: #Hello.
	self fileIn: 'Hello-1-HelloWithHelloMethod.st'.
	^ aSlide headingAndCode
		priority: (self priorityFor: #definingMethodsAfter:);
		heading: 'Defining methods';
		addCodeSnippet: 'HelloWorld new hello ';
		onEveryAddToSceneGraphDo: [ self ensureEmptyClass: #HelloWorld inPackage: #Hello.
			self fileIn: 'Hello-1-HelloWithHelloMethod.st' ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> dynamicArrays: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #dynamicArrays:);
		heading: 'Dynamic arrays' ;
		addCodeSnippet: '{ 3 + 4 . 2 raisedTo: 10 }' ;
		addCodeSnippet: '#( 3 + 4 . 2 raisedTo: 10 ) '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> expressions: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #expressions:);
		heading: 'Expressions';
		addCodeSnippet: '3 factorial';
		addCodeSnippet: '3 + 4';
		addCodeSnippet: '2 raisedTo: 3'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> floats: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #floats:);
		heading: 'Floats';
		addCodeSnippet: '3.14';
		addCodeSnippet: '3.14e2';
		addCodeSnippet: '3.14s2'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> integers: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #integers:);
		heading: 'Integers';
		addCodeSnippet: '1';
		addCodeSnippet: '42'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> keywordMessages: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #keywordMessages:);
		heading: 'Keyword messages';
		addCodeSnippet: '''Hello world'' copyReplaceAll: ''world'' with: ''folks'''
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> literalArrays: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #literalArrays:);
		heading: 'Literal arrays';
		addCodeSnippet: '#(1 2 3)';
		addCodeSnippet: '#(1 $a foo ''Hello World'')';
		addCodeSnippet: '#(1 3.14 2r101010 
	#(''hello'' goodbye 
		#($a #b)
	)
)'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> literals: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #literals:);
		heading: 'Literals';
		addCodeSnippet: '3';
		addCodeSnippet: '''hello''';
		addCodeSnippet: '#foo'
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
	"Scale the postcard so it fits example regardless ofthe size of the slide"

	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #postcardSyntaxExplanation:);
		newFadedText: 'The postcard again';
		element: [ (BrVerticalPane new
				exact: 1200 @ 800;
				padding: (BlInsets
						top: 20
						right: 20
						bottom: 20
						left: 20);
				addChild: ((Postcard >> #exampleWithNumber:
						gtViewNodesExplanationWithLinksFor: GtPhlowEmptyView new)
						asElementDo: [ :e | e ])) asScalableElement
				constraintsDo: [ :c | 
					c vertical matchParent.
					c horizontal matchParent ] ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> pragmas: aSlide [
	<gtSlide>
	self fileIn: 'Hello-3-HelloGtExample.st'.
	^ aSlide headingAndCode
		priority: (self priorityFor: #pragmas:);
		heading: 'Pragmas';
		addExampleSnippet: HelloWorld >> #helloExample
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> precedence: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #precedence:);
		heading: 'Precedence';
		addCodeSnippet: '2 raisedTo: 1 + 3 factorial ';
		addCodeSnippet: '2 raisedTo: (1 + (3 factorial))'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> radixNumbers: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #radixNumbers:);
		heading: 'Radix numbers';
		addCodeSnippet: '2r101010';
		addCodeSnippet: '8r52';
		addCodeSnippet: '16r2A'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> readAloud: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #readAloud:);
		heading: 'Smalltalk is designed to be read aloud';
		addCodeSnippet: 'Smalltalk allClasses select: #isAbstract'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> reservedWords: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #reservedWords:);
		heading: 'Reserved words';
		addCodeSnippet: 'true';
		addCodeSnippet: 'false';
		addCodeSnippet: 'nil';
		addCodeSnippet: 'self';
		addCodeSnippet: 'super';
		addCodeSnippet: 'thisContext'
]

{ #category : #constants }
SmalltalkSyntaxSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	
	^ #( 
		titleSlide:
		postCardImageSlide:
		readAloud:

		#literals:
			integers:
			floats:
			radixNumbers:
			strings:
			characters:
			symbols:
			literalArrays:
			byteArrays:
			reservedWords:

		#expressions:
			unaryMessages:
			binaryMessages:
			keywordMessages:
			precedence:
			cascades:
			dynamicArrays:
		
		statements:
			blocks:
			blocksWithArguments:
			blocksWithMultipleArguments:
			controlConstructs:
		
		creatingClasses:
			definingMethods:
			definingMethodsAfter:
			definingKeywordMethods:
			pragmas:

		postcardSyntaxExplanation:
		
		closing:
	)
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> statements: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #statements:);
		heading: 'Statements' ;
		addCodeSnippet: '| a b c |	"temporaries (local variables)"
a := 3.      "assignments using := "
b := 4.      "periods as statement separators"
c := (a squared + b squared) sqrt'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> strings: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #strings:);
		heading: 'Strings';
		addCodeSnippet: '''Hello world''';
		addCodeSnippet: '''That''''s right'''
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> symbols: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #symbols:);
		heading: 'Symbols' ;
		addCodeSnippet: '#a';
		addCodeSnippet: '#HelloWorld'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Smalltalk Syntax in 7''')
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> unaryMessages: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #unaryMessages:);
		heading: 'Unary messages';
		addCodeSnippet: '3 factorial '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> whatsNext: aSlide [
	"<gtSlide>"
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
