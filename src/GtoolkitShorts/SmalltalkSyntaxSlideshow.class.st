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
	^ aSlide headingAndCode
		priority: (self priorityFor: #binaryMessages:);
		heading: 'Binary messages';
		addSnippet: '3 + 4 '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocks: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #blocks:);
		heading: 'Blocks';
		addSnippet: '[ 3 + 4 ]';
		addSnippet: '[ 3 + 4 ] value '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithArguments: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #blocksWithArguments:);
		heading: 'Blocks with arguments';
		addSnippet: '[ :n | n + 1 ] value: 41'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithMultipleArguments: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #blocksWithMultipleArguments:);
		heading: 'Blocks with multiple arguments';
		addSnippet: '[ :a :b |
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
		addSnippet: '#[1 2 2r11]';
		addSnippet: '#[1 $a foo ''Hello World''] "Not valid"'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> cascades: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #cascades:);
		heading: 'Cascades' ;
		addSnippet: 'OrderedCollection new
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
		addSnippet: '$a';
		addSnippet: 'Character tab '
]

{ #category : #example }
SmalltalkSyntaxSlideshow >> coderElementExample [
	<gtExample>
	^ self coderElementFor: '3+4'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> controlConstructs: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #controlConstructs:);
		heading: 'Control constructs';
		addSnippet: 'Smalltalk allClasses size < 1000
	ifTrue: [ ''not so many'' ]
	ifFalse: [ ''quite a few!'' ]'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> creatingClasses: aSlide [
	<gtSlide>
	self removeClass: #HellowWorld.
	^ aSlide headingAndCode
		priority: (self priorityFor: #creatingClasses:);
		heading: 'Creating classes' ;
		addSnippet: 'Object
	subclass: #HelloWorld
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: #Hello'
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
	self removeClass: #HellowWorld.
	Object
		subclass: #HelloWorld
		instanceVariableNames: ''
		classVariableNames: ''
		package: #Hello.	"Shorts fileIn: 'Hello-1-HelloWithHelloMethod.st'."
	^ aSlide headingAndCode
		priority: (self priorityFor: #definingMethods:);
		heading: 'Defining methods';
		addSnippet: 'HelloWorld new hello '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingMethodsAfter: aSlide [
	<gtSlide>
	"NB: we should open the hello world method code. 
	This can only be done programmatically with a Scripter script.
	See: GtCoderSlideshow>>exampleMethodsExplanationWithLinks
	"
	self removeClass: #HellowWorld.
	Object
		subclass: #HelloWorld
		instanceVariableNames: ''
		classVariableNames: ''
		package: #Hello.
	self fileIn: 'Hello-1-HelloWithHelloMethod.st'.
	^ aSlide headingAndCode
		priority: (self priorityFor: #definingMethodsAfter:);
		heading: 'Defining methods';
		addSnippet: 'HelloWorld new hello '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> dynamicArrays: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #dynamicArrays:);
		heading: 'Dynamic arrays' ;
		addSnippet: '{ 3 + 4 . 2 raisedTo: 10 }' ;
		addSnippet: '#( 3 + 4 . 2 raisedTo: 10 ) '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> expressions: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #expressions:);
		heading: 'Expressions';
		addSnippet: '3 factorial';
		addSnippet: '3 + 4';
		addSnippet: '2 raisedTo: 3'
]

{ #category : #utilities }
SmalltalkSyntaxSlideshow >> fileIn: aFilename [
	(self fileOuts / aFilename) fileIn
]

{ #category : #utilities }
SmalltalkSyntaxSlideshow >> fileOuts [
	"The directory where the fileOuts are stored."

	<gtExample>
	^ FileLocator localDirectory / 'iceberg' / 'feenkcom' / 'gtoolkit-shorts'
		/ 'fileOuts'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> floats: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #floats:);
		heading: 'Floats';
		addSnippet: '3.14';
		addSnippet: '3.14e2';
		addSnippet: '3.14s2'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> integers: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #integers:);
		heading: 'Integers';
		addSnippet: '1';
		addSnippet: '42'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> keywordMessages: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #keywordMessages:);
		heading: 'Keyword messages';
		addSnippet: '''Hello world'' copyReplaceAll: ''world'' with: ''folks'''
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> literalArrays: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #literalArrays:);
		heading: 'Literal arrays';
		addSnippet: '#(1 2 3)';
		addSnippet: '#(1 $a foo ''Hello World'')';
		addSnippet: '#(1 3.14 2r101010 
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
		addSnippet: '3';
		addSnippet: '''hello''';
		addSnippet: '#foo'
]

{ #category : #constants }
SmalltalkSyntaxSlideshow >> myLepiterDB [
	^ 'feenkcom/gtoolkit-shorts/lepiter'
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
		newFadedText: 'The postcard again';
		element: [
			((Postcard>>#exampleWithNumber:) 
				gtViewNodesExplanationWithLinksFor: GtPhlowEmptyView new) 
					asElementDo: [:e | e ]]
					";
		newFadedText: ('Let''s put it all together. Take a look at the method below. Hover over the syntactical parts on the left to understand how they map on the different parts of the method.' asRopedText fontSize: 70)"
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> pragmas: aSlide [
	"TO FIX -- we want something like the headingAndCode slide, but instead of a snippet, it should be an example method."
	<gtSlide>
	self fileIn: 'Hello-3-HelloGtExample.st'.
	^ aSlide labelAndElement
		priority: (self priorityFor: #pragmas2:);
		newTextWithFormat: (self asHeader: 'Pragmas');
		element: [ (HelloWorld >> #helloExample gtSourceFor: GtPhlowEmptyView new)
				asElementDo: [ :e | e ] ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> precedence: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #precedence:);
		heading: 'Precedence';
		addSnippet: '2 raisedTo: 1 + 3 factorial ';
		addSnippet: '2 raisedTo: (1 + (3 factorial))'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> radixNumbers: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #radixNumbers:);
		heading: 'Radix numbers';
		addSnippet: '2r101010';
		addSnippet: '8r52';
		addSnippet: '16r2A'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> readAloud: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #readAloud:);
		heading: 'Smalltalk is designed to be read aloud';
		addSnippet: '''I need another example ...''';
		addSnippet: 'thisSnippet database pages 
	select: [ :page | page hasTitle ]'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> removeClass: aSymbol [
	[ aSymbol asClass removeFromSystem ] onErrorDo: [  ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> reservedWords: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #reservedWords:);
		heading: 'Reserved words';
		addSnippet: 'true';
		addSnippet: 'false';
		addSnippet: 'nil';
		addSnippet: 'self';
		addSnippet: 'super';
		addSnippet: 'thisContext'
]

{ #category : #accessing }
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
			
			"FIX THIS to be a method on a slide!"
			pragmas:

		postcardSyntaxExplanation:
		
		whatsNext:
	)
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> statements: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #statements:);
		heading: 'Statements' ;
		addSnippet: '| a b c |	"temporaries (local variables)"
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
		addSnippet: '''Hello world''';
		addSnippet: '''That''''s right'''
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> symbols: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #symbols:);
		heading: 'Symbols' ;
		addSnippet: '#a';
		addSnippet: '#HelloWorld'
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
	^ aSlide headingAndCode
		priority: (self priorityFor: #unaryMessages:);
		heading: 'Unary messages';
		addSnippet: '3 factorial '
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
