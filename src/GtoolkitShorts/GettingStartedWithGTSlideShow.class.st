Class {
	#name : #GettingStartedWithGTSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #GtoolkitShorts
}

{ #category : #accessing }
GettingStartedWithGTSlideShow >> blindMenWithElephantSlide: aSlide [
	"Blind monks examining an elephant, an ukiyo-e print by Hanabusa Itchō (1652–1724). https://en.wikipedia.org/wiki/Hanabusa_Itchō"

	<gtSlide>
	<text: '# Blind  monks examining an elephant

The Glamorous Toolkit is a *moldable development environment*, which means that it can be easily and cheaply adapted to variety of needs.

This means that, as in the parable of the blind men and the elephant, if you look too closely at one part, you may miss the greater picture.

Let''s take a tour of the various parts that make up GT.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #blindMenWithElephantSlide:);
		newFadedText: 'Blind monks examining an elephant';
		element: [ self elementForPicture: 'Blind_monks_examining_an_elephant.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> closing: aSlide [
	<gtSlide>
	<text:
'# Closing

You''ll find more GT in 7'' videos on our YouTube channel, or you can explore GT by downloading it from gtoolkit.com.

Thanks for listening.'>

	^ aSlide title
		priority: (self priorityFor: #closing:);
		titleWithFormat: ('glamoroustoolkit' asRopedText
				fontSize: 80;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 'glamorous' size + 1 to: t size) bold ];
				yourself);
		subtitleWithFormat: ('gtoolkit.com' asRopedText
				fontSize: 48;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> dataExplorer: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is a Data Explorer

- GitHub REST API
- Inspector views
- Spotter -- searching everywhere, or in a context
- File Manager -- JSON and other file types

It''s a data explorer
	Ear
	GraphQL case study
	GitHub REST API
	Inspector
		You are inspecting live objects
	Spotter
		Finding anything anywhere
		Finding things in a context
			Eg GT Book
		How to search for stuff with Spotter.
	File manager
		Fancy file browser
		JSON etc?

'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #dataExplorer:);
		newTextWithFormat: (self asHeader: 'GT is a Data Explorer');
		element: [ self elementForPicture: 'blind-monks-ear.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> downloadGt: aSlide [
	<gtSlide>
	<text: 
'# Download GT

The first thing to do is to download Glamorous Toolkit for your platform and start it up.

*(Open [](https://gtoolkit.com), download GT and run it.)*'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #downloadGt:);
		newTextWithFormat: (self asHeader: 'Downloading GT');
		element: [ (self elementForPicture: 'blind-monks-trunk.jpg')  size: 500@300 ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> elementForPicture: aFilename [
	^ GtFileUtility imageElementFromFileReference: self picturesFolder / aFilename
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtWorld: aSlide [
	<gtSlide>
	<text:
'# GT World

```
"Run this to hide the unwanted home cards"
(#gtHomeSection gtPragmas contents copyWithout: GtHome >> #getStartedSection)
	do: [ :each | each removeFromSystem ]
```

When we open GT, we see an image populated with live objects, and a number of tools we can use to interact with these objects.

At the left there is a list of such tools that we can fire up, and also at the top right there is a quick access menu to access several of these tools.

There is also a button to save the current state of the image, should we wish to do so.

At the center we also a see a GT Home card to quickly access a given project.

Now let''s explore some of the classical use cases for GT.'>


	^ aSlide labelAndElement
		priority: (self priorityFor: #gtWorld:);
		newFadedText: 'GT World';
		element: [  aSlide world ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> headerSize [
	^ 40
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> ide: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is an IDE

- Coder
- Git tool
- Not just SMalltalk
- Examples: GraphQL
- Language server protocol for Rust ?

It''s an IDE
	Back
	Coder
	Code is saved to repos
	Git
	NB: not just a Smalltalk IDE!
		GraphQL
		See also Language Server protocol
			for Rust

			
'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #ide:);
		newTextWithFormat: (self asHeader: 'GT is an IDE');
		element: [ self elementForPicture: 'blind-monks-back.jpg' ]
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> initializeDb [
	db := nil.
	self db addPage: self placeholderPage.
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> knowledgeBase: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is a knowledge base


- GT book -- documentation as a use case
- Your Private lepiter db
- Creating notes and playgrounds
- AT protocol as a PKM system???

It''s a knowledge base
	Head
	Lepiter
		You have your own Lepiter db
			Lepiter notebooks are persisted to JSON files
		Create Notes and Playgrounds
			Show how to enter snippets
			How to evaluate code
		Use case: AT protocol (Bluesky)
			PKM?
		Use case system documentation
			Ie in contrast to personal KM



'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #knowledgeBase:);
		newTextWithFormat: (self asHeader: 'GT is a knowledge base');
		element: [ self elementForPicture: 'blind-monks-head.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> languageWorkbench: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is a language workbench

- SPL case study?
- AT protocol editor -- completion and syntax highlighting

It''s a language workbench
	Leg
	SPL case study
	Or use AT protocol editor
		Completion and syntax highlighting

'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #languageWorkbench:);
		newTextWithFormat: (self asHeader: 'GT is a language workbench');
		element: [ self elementForPicture: 'blind-monks-leg.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> modelBuilder: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is a model builder

- UHMO (restaurant) case study ?

It''s a model builder
	Tail
	It''s a visualization tool?
	UHMO case study
		Restaurant automation

		
'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #modelBuilder:);
		newTextWithFormat: (self asHeader: 'GT is a model builder');
		element: [ self elementForPicture: 'blind-monks-tail.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> moldableIDE: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is a Moldable Development Environment

What is GT?
	What is the elephant?
	GT is not any one of these
		It’s rather a language for moldable development
	Moldable development
	Moldability
		Molding by adding annotated methods
		Custom views
		Custom searches
		Custom advices
	Tools and buttons mean different things for different domains


'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #moldableIDE:);
		newTextWithFormat: (self asHeader: 'GT is a Moldable Development Environment');
		element: [ self elementForPicture: 'Brooklyn_Museum_-_Blind_Men_Appraising_an_Elephant_-_Ohara_Donshu.jpg' ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> picturesFolder [
	<gtExample>
	<noTest>
	^ GtResourcesUtility
		resourceAtPath: self picturesDirectoryPath / 'GettingStarted'
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> placeholderPage [
	<gtExample>
	^ (LePage named: 'PLACEHOLDER')
		addSnippet: (LeTextSnippet new
				string: 'Start by downloading GT for your platform from [](https://gtoolkit.com).';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Then go to {{gtPage:How to configure GitHub SSH key authentication|db=2j9m7db2i4oz116bexd7wbdxo}}. ';
				yourself);
		yourself
]

{ #category : #constants }
GettingStartedWithGTSlideShow >> slidePriorities [
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		blindMenWithElephantSlide:
		
		downloadGt:
			gtWorld:
		
		knowledgeBase:
		
		ide:
		
		dataExplorer:
		
		modelBuilder:
		
		languageWorkbench:
		
		moldableIDE:
		
		closing:
	)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> titleSlide: aSlide [
	<gtSlide>
	<text: 
'# Getting started with GT in 7''

Hello. My name is Oscar Nierstrasz.

Today I''d like to introduce you to GT.'>

	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Getting started with GT in 7''')
]
