"
```
SmalltalkSyntaxSlideshow show
```

"
Class {
	#name : #SmalltalkSyntaxSlideshow,
	#superclass : #GtShortSlideshow,
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
	<text: 'Binary messages consist of operators like plus or minus, followed by a single argument.

`3+4` sends the message `+` to the object `3` with the argument `4`.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Binary messages';
		addCodeSnippet: '3 + 4 '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocks: aSlide [
	<gtSlide>
	<text: 'A block closure is a snippet of code within square brackets. It''s essentially a lambda, or an anonymous function.

You can evaluate a block by sending it the message `value`. The value returned is that of the last statement in the block, in this case, the value of `3+4`.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Blocks';
		addCodeSnippet: '[ 3 + 4 ]';
		addCodeSnippet: '[ 3 + 4 ] value '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithArguments: aSlide [
	<gtSlide>
	<text: 'A block can take arguments, which are declared at the beginning of the block with a colon, followed by an or-bar.

This block increments its argument. We evaluate it by sending the message `value:` with an argument.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Blocks with arguments';
		addCodeSnippet: '[ :n | n + 1 ] value: 41'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> blocksWithMultipleArguments: aSlide [
	<gtSlide>
	<text: 'This block has two arguments, `a` and `b`, and a temporary variable, `c`. 

To evaluate it, we send it `value:value:` with two arguments.

As you might guess, this generalizes to yet more arguments.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Blocks with multiple arguments';
		addCodeSnippet: '[ :a :b |
	| c |
	c := (a squared + b squared) sqrt 
] value: 3 value: 4'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> byteArrays: aSlide [
	<gtSlide>
	<text: 'A byte array is similar but uses square brackets, and can only contain 8-bit integers.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Byte arrays';
		addCodeSnippet: '#[1 2 2r11]';
		addCodeSnippet: '#[1 $a foo ''Hello World''] "Not valid"'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> cascades: aSlide [
	<gtSlide>
	<text: 'Cascades are used to send a sequence of messages, separated by semi-colons, to the same receiver object.

Here we send three `add:` messages to a new `OrderedCollection`, followed by a `reversed` *message. The result is a reversed collection.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Cascades';
		addCodeSnippet: 'OrderedCollection new
	add: 3;
	add: 4;
	add: 6;
	reversed '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> characters: aSlide [
	<gtSlide>
	<text: 'Typeable characters start with a dollar sign.

This is the letter `a`.

Just ask the Character class for a non-typeable character such as a tab or a newline.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Characters';
		addCodeSnippet: '$a';
		addCodeSnippet: 'Character tab '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> closing: aSlide [
	<gtSlide>
	<text: 'You''ll find more GT in 7'' videos on our YouTube channel, or you can explore GT by downloading it from gtoolkit.com.

Thanks for listening.'>
	^ aSlide title
		setPriority;
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
	<text: 'Interestingly, Smalltalk has no syntax for control constructs,  but instead implements them as messages to objects.

Here we ask if there are fewer than 1000 classes in the system, and then we send that boolean object the message `#ifTrue:ifFalse`. If it''s true, we get one string back, else the other.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Control constructs';
		addCodeSnippet: 'Smalltalk allClasses size < 1000
	ifTrue: [ ''not so many'' ]
	ifFalse: [ ''quite a few!'' ]'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> creatingClasses: aSlide [
	<gtSlide>
	<text: 'There is also no syntax for defining classes.

Here we send a message to the class `Object`, asking it to create the `HelloWorld` subclass for us.

Of course we can also create classes using the coding tools.

Class names start with an upper-case letter, and are globally visible.'>
	self removeClass: #HelloWorld.
	^ aSlide headingAndCode
		setPriority;
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
	<text: 'We can similarly declare methods for keyword messages.

In this case the method name, or "selector", is `hello:`, and there is a formal parameter, `aString`.

```
GtShortSlideshow new fileIn: ''Hello-2-HelloWithArgument.st''
```
'>
	self ensureEmptyClass: #HelloWorld inPackage: #Hello.
	self fileIn: 'Hello-2-HelloWithArgument.st'.
	^ aSlide headingAndCode
		setPriority;
		heading: 'Defining keyword methods';
		addCodeSnippet: 'HelloWorld new hello: ''Oscar''';
		onEveryAddToSceneGraphDo: [ self ensureEmptyClass: #HelloWorld inPackage: #Hello.
			self fileIn: 'Hello-2-HelloWithArgument.st' ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> definingMethods: aSlide [
	<gtSlide>
	<text: 'Methods can be defined programmatically, just like classes, or using the IDE.

Now we''ll create one as a fixit.

In this snippet we see a monkey wrench icon next to the `hello` message, indicating that there is no `hello` method implemented yet.

We can click on the icon to fix it.'>
	self ensureEmptyClass: #HelloWorld inPackage: #Hello.
	^ aSlide headingAndCode
		setPriority;
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
	<text: '
```
GtShortSlideshow new
	ensureEmptyClass: #HelloWorld inPackage: #Hello;
	fileIn: ''Hello-1-HelloWithHelloMethod.st''.
```

Every method starts with a declaration of the message and any arguments.

In this case it''s just `hello` with no arguments.

Methods often start with a brief comment in double quotes.

Note that a comment is not a value in Smalltalk, unlike a string.

We return a value using the caret symbol.

Here we just return the `''Hello world''` string.'>
	self ensureEmptyClass: #HelloWorld inPackage: #Hello.
	self fileIn: 'Hello-1-HelloWithHelloMethod.st'.
	^ aSlide headingAndCode
		setPriority;
		heading: 'Defining methods';
		addCodeSnippet: 'HelloWorld new hello ';
		onEveryAddToSceneGraphDo: [ self ensureEmptyClass: #HelloWorld inPackage: #Hello.
			self fileIn: 'Hello-1-HelloWithHelloMethod.st' ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> dynamicArrays: aSlide [
	<gtSlide>
	<text: 'Lastly, a dynamic array consists of arbitrary expressions in curly braces separated by periods.

Don''t confuse literal and dynamic arrays! A literal array treats every token inside it as a literal, not an expression.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Dynamic arrays';
		addCodeSnippet: '{ 3 + 4 . 2 raisedTo: 10 }';
		addCodeSnippet: '#( 3 + 4 . 2 raisedTo: 10 ) '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> expressions: aSlide [
	<gtSlide>
	<text: 'Expressions in Smalltalk are formed by sending messages to objects.

There are three kinds of messages: unary, binary, and keyword.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Expressions';
		addCodeSnippet: '3 factorial';
		addCodeSnippet: '3 + 4';
		addCodeSnippet: '2 raisedTo: 3'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> floats: aSlide [
	<gtSlide>
	<text: 'and various kinds of floats,'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Floats';
		addCodeSnippet: '3.14';
		addCodeSnippet: '3.14e2';
		addCodeSnippet: '3.14s2'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> integers: aSlide [
	<gtSlide>
	<text: 'As you would expect, Smalltalk not only supports integers'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Integers';
		addCodeSnippet: '1';
		addCodeSnippet: '42'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> keywordMessages: aSlide [
	<gtSlide>
	<text: 'Finally, keyword messages consist of a number of keywords, each followed by a colon and an argument.

`''Hello world'' copyReplaceAll: ''world'' with: ''folks''` sends the message `#copyReplaceAll:with:` to the string `''Hello world''` with the two arguments `''world''` and `''folks''` '>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Keyword messages';
		addCodeSnippet: '''Hello world'' copyReplaceAll: ''world'' with: ''folks'''
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> literalArrays: aSlide [
	<gtSlide>
	<text: 'A literal array starts with a hash, followed by matching parentheses enclosing any sequence of literal values.

Literal arrays can be nested.'>
	^ aSlide headingAndCode
		setPriority;
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
	<text: 'Let''s start with syntax for all kinds of literal values.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Literals';
		addCodeSnippet: '3';
		addCodeSnippet: '''hello''';
		addCodeSnippet: '#foo'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> postCardImageSlide: aSlide [
	<gtSlide>
	<text: 'Smalltalk syntax is quite compact, and famously fits on a postcard.'>
	^ aSlide filePicture
		setPriority;
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-shorts/doc/postcardsyntax.png')
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> postcardSyntaxExplanation: aSlide [
	"Scale the postcard so it fits example regardless of the size of the slide"

	<gtSlide>
	<text: 'Finally we can browse through the postcard example and see how it demonstrates all the syntactic constructs of Pharo Smalltalk.

We have unary messages, such as `isNil` and `size`,

binary messages like `&`, `+` and `<`,

and keyword messages, such as `do:` and `show:`.

There are temporaries, like `y`, `byteArray` and `var`,

an argument, `x`,

globals `Transcript` and `Character`.

We use `self`, `super` and `thisContext`,

we have both dynamic and literal arrays, integers, floats, characters, and so on.'>
	^ aSlide labelAndElement
		setPriority;
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
	<text: '```
GtShortSlideshow new fileIn: ''Hello-3-HelloGtExample.st''
```

Pragmas are annotations in angle brackets.

The `<gtExample>` pragma informs GT that this method contains test code and returns an example object.

As in blocks, we must declare any temporary variables within or-bars before any executable code.

We assign the values of expressions to variables with the `:=` operator.

And statements are separated by periods.

In GT we can directly evaluate and inspect the example.'>
	self fileIn: 'Hello-3-HelloGtExample.st'.
	^ aSlide headingAndCode
		setPriority;
		heading: 'Pragmas';
		addExampleSnippet: HelloWorld >> #helloExample;
		onEveryAddToSceneGraphDo: [ self fileIn: 'Hello-3-HelloGtExample.st' ]
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> precedence: aSlide [
	<gtSlide>
	<text: 'Within a complex expression, first unary messages are evaluated, left to right, then binary messages, and last of all, keyword messages.

`2 raisedTo: 1 + 3 factorial ` is the same as the second expression here with parentheses.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Precedence';
		addCodeSnippet: '2 raisedTo: 1 + 3 factorial ';
		addCodeSnippet: '2 raisedTo: (1 + (3 factorial))'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> radixNumbers: aSlide [
	<gtSlide>
	<text: 'but also radix numbers with an explicit base. Here we see the number 42 in binary, octal and hex.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Radix numbers';
		addCodeSnippet: '2r101010';
		addCodeSnippet: '8r52';
		addCodeSnippet: '16r2A'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> readAloud: aSlide [
	<gtSlide>
	<text: 'Smalltalk syntax is designed so that you can read it aloud, and it should make sense.

For example: `Smalltalk allClasses select: #isAbstract` returns all the abstract classes in the Smalltalk system.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Smalltalk is designed to be read aloud';
		addCodeSnippet: 'Smalltalk allClasses select: #isAbstract'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> reservedWords: aSlide [
	<gtSlide>
	<text: 'Pharo Smalltalk has just six reserved keywords, whose meanings should be obvious, except for* `thisContext`*, which is used in metaprogramming to access the run-time stack.'>
	^ aSlide headingAndCode
		setPriority;
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
	<noTest>
	
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
	<text: 'Statements in Smalltalk are expressions separated by periods.

We can also declare temporary variables, such as `a`, `b` and `c` here, and assign values of expressions to them.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Statements';
		addCodeSnippet: '| a b c |	"temporaries (local variables)"
a := 3.      "assignments using := "
b := 4.      "periods as statement separators"
c := (a squared + b squared) sqrt'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> strings: aSlide [
	<gtSlide>
	<text: 'Strings in Smalltalk are surrounded by single quotes.

Type two of them to get a single quote within a string.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Strings';
		addCodeSnippet: '''Hello world''';
		addCodeSnippet: '''That''''s right'''
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> symbols: aSlide [
	<gtSlide>
	<text: 'A symbol is a sequence of a characters starting with a hash.

Symbols are pretty much like strings, except that they are unique.

You can have many strings with the same value, but only one symbol.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Symbols';
		addCodeSnippet: '#a';
		addCodeSnippet: '#HelloWorld'
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> titleSlide: aSlide [
	<gtSlide>
	<text: 'Hello.

My name is Oscar Nierstrasz.

Today I''d like to give you quick guided tour of the syntax of Smalltalk.'>
	^ aSlide title
		setPriority;
		titleWithFormat: (self asTitle: 'Smalltalk Syntax in 7''')
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> unaryMessages: aSlide [
	<gtSlide>
	<text: '`3 factorial` is a unary message. It sends the message `factorial` to the object `3`.'>
	^ aSlide headingAndCode
		setPriority;
		heading: 'Unary messages';
		addCodeSnippet: '3 factorial '
]

{ #category : #slides }
SmalltalkSyntaxSlideshow >> whatsNext: aSlide [
	"<gtSlide>"

	^ aSlide textAndElement
		elementWeight: 0.5;
		setPriority;
		newTextWithFormat: (self asHeader: 'What''s next?') bold
				, (self
						asText: '

See more GT in 7'' videos on YouTube.
Explore GT at gtoolkit.com.');
		element: [ GtFilePictureLiveSlide new
				fileReference: (GtResourcesUtility
						resourceAtPath: self picturesDirectoryPath / 'gt-shorts-playlist.png') ]	"element: [ aSlide world ]"
]
