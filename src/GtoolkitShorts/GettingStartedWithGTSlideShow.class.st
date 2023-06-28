Class {
	#name : #GettingStartedWithGTSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
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
GettingStartedWithGTSlideShow >> coder: aSlide [
	<gtSlide>
	<text:
'***TODO***

# Getting started with the Coder

Create a HelloWorld class.
Create a hello method.
Change it to a class metjod.
Evaluate it.
Change it to an example method.
Change the protocol.
Add a class comment.
Search for other methods, eg =.
Search for classes, eg ByteString.

NB: rather than working from the coder, it is more convenient to start with live objects in the Notebook.
'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #coder:);
		newFadedText: ('Getting started with the Coder' asRopedText);
		element: [GtCoder new createInPager maximized].
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> creatingNotes: aSlide [
	"How to open a slide on the World with the book open?"

	<gtSlide>
	<text:
'## Creating Notes

We can also create a Note, which is just like a Playground, except that it starts with a text snippet, and we normally give it a title.

*(Add a title and some text.)*

Just like with a Playground, we can add new snippets, by clicking on the `+` or using keyboard shortcuts.

*(Add a code snippet.)*

We can move snippets around with the menu in the bottom right, or with shortcuts.

*(Move the code snippet up and down, indent and dedent.)*

The Playgrounds and Notes that you create are saved in your personal Lepiter database.

*(Show the db and show the pages are there in the Pages view.)*

I use my Lepiter database to keep track of projects, tasks, frequently asked questions and random notes.

You can have multiple databases and move pages between them.

*(Click on the database button at bottom left.)*

A page is a live object, which you can inspect.

*(Click on the `(i)` button.)*

We can explore various views, such as the *Snippets* view or the *StoreString*, which will programmatically generate a copy of the page.

Lepiter pages are saved to the file system.

*(Click on the *File* button and go to the *Contents* view.)*

We can also interact with the page by sending it messages.

*(Open the playground and inspect `self database`.)*

Here we can inspect the Lepiter database of this page.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #creatingNotes:);
		newFadedText: 'Creating Notes';
		element: [ aSlide world ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> creatingPlaygrounds: aSlide [
	<gtSlide>
	<text:
'## Creating Playgrounds

A Playground is Lepiter page with a snippet where you can experiment with Pharo code.

For example, we can enter code like `3 + 4`, and `Inspect` the result.

This opens a new pane with an Inspector showing numerous views of the result.

We can add a new code snippet by clicking on the `+` and selecting a new Pharo snippet (or we can just type Command-Return in the existing snippet).

If we enter the string `''hello''` into the new snippet and inspect it, we can go to the Items view and inspect each individual character.

The Inspector can always be used like this to explore arbitrary nested objects.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #creatingPlaygrounds:);
		newFadedText: 'Creating Playgrounds';
		element: [ aSlide world ]
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


Alternative: SCG Pico website
Include a visualization of the links?

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
GettingStartedWithGTSlideShow >> git: aSlide [
	<gtSlide>
	<text: '***TODO***

# Getting started with the Git tool

'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #git:);
		newFadedText: 'Getting started with the Git tool' asRopedText;
		element: [ GtGitStencil new ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> githubRestAPI: aSlide [
	<gtSlide>
	<text:
'***TODO***

## Wrapping objects to explore them

Explain the basic idea.

'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #githubRestAPI:);
		pageNamed: 'Working with a REST API: the GitHub case study' from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtBook: aSlide [
	"How to open a slide on the World with the book open?"

	<gtSlide>
	<text:
'## GT Book

*(Open the GT Book.)*

The Glamorous Toolkit Book is an example of a Lepiter database consisting of numerous linked Notebook pages that provide detailed documentation about GT.

Each page consists of snippets that may contain Markdown text, executable code, live examples, or other kinds of content.

For example, the page *About this book* contains a live Treemap with an overview of the organization of the book itself.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #gtBook:);
		newFadedText: 'GT Book';
		element: [ aSlide world ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtWorld: aSlide [
	<gtSlide>
	<text:
'## GT World

```
GtShortSlideshow disableHomeSections.
```
When we open GT, we see an image populated with live objects, and a number of tools we can use to interact with these objects.

At the left there is a list of such tools that we can fire up, and also at the top right there is a quick access menu to access several of these tools.

There is also a button to save the current state of the image, should we wish to do so.

At the center we also a see a GT Home card to quickly access a given project.

Now let''s explore some of the classical use cases for GT.'>

	"GtShortSlideshow disableHomeSections."

	^ aSlide labelAndElement
		priority: (self priorityFor: #gtWorld:);
		newFadedText: 'GT World';
		element: [  aSlide world ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> headerSize [
	^ 40
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> howToParseOtherLanguages: aSlide [
	<gtSlide>
	<text:
'***TODO***

## How to parse other languages

Show we don''t just parse but can explore.

'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #howToParseOtherLanguages:);
		pageNamed: 'How to parse sources in different languages' from: self gtBookName;
		yourself
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> howToWorkWithGitHub: aSlide [
	<gtSlide>
	<text:
'***TODO***

## How to work with GitHub

'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #howToWorkWithGitHub:);
		pageNamed: 'How to work with GitHub' from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> ide: aSlide [
	<gtSlide>
	<text: 
'**TODO**

# GT is an IDE

- Coder
- code saved to repos
- Git tool

			
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
'# GT is a knowledge base

One important use case for GT is as a knowledge base for system documentation.'>
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



This belongs in the Language Workbench part:
- Not just Smalltalk
- Examples: GraphQL
- Language server protocol for Rust ?


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

Load as follows.

```
Metacello new
   baseline: ''UhmoWithoutGT'';
   repository: ''github://feenkcom/uhmo/src'';
   load.
```

UCozyCornerExamples>>#placeOrderWithMultipleItemsToTable2ByJohnWaiter
		
'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #modelBuilder:);
		newTextWithFormat: (self asHeader: 'GT is a model builder');
		element: [ self elementForPicture: 'blind-monks-tail.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> moldableIDE: aSlide [
	"https://commons.wikimedia.org/wiki/File:Brooklyn_Museum_-_Blind_Men_Appraising_an_Elephant_-_Ohara_Donshu.jpg"

	<gtSlide>
	<text: '**TODO**

# GT is a Moldable Development Environment
What is GT?
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
		element: [ self
				elementForPicture: 'Brooklyn_Museum_-_Blind_Men_Appraising_an_Elephant_-_Ohara_Donshu.jpg' ]
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
			gtBook:
			creatingPlaygrounds:
			creatingNotes:
		
		ide:
			#coder:
			#git:
			howToWorkWithGitHub:
		
		dataExplorer:
			githubRestAPI:
		
		modelBuilder:
		
		languageWorkbench:
			howToParseOtherLanguages:
		
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
