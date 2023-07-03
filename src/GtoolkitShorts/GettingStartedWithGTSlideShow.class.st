Class {
	#name : #GettingStartedWithGTSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
GettingStartedWithGTSlideShow >> blindMenWithElephantSlide: aSlide [
	"Blind monks examining an elephant, an ukiyo-e print by Hanabusa Itchō (1652–1724). https://en.wikipedia.org/wiki/Hanabusa_Itchō"

	<gtSlide>
	<text:

'The Glamorous Toolkit is a *moldable development environment*, which means that it can be easily and cheaply adapted to variety of needs.

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
'With the Coder you can create classes,

*(NB: this should go quickly, just to introduce the key features.)*

*(Create a HelloWorld class in a Hello package.)*

add methods,

*(Create a hello method.*)

categorize them,

*(Change the protocol to "demo".)*

or turn them into class methods,

*(Change it to a class method.)*

run code directly from the browser,

*(Inspect.)*

create example methods,

*(Add a method like this one.)*
```
"instance"
	| example |
	<gtExample>
	example := HelloWorld new.
	self assert: example hello equals: ''hello''.
	^ example
```

run examples as tests,

*(Run the examples.)

search for methods,

*(Search for other methods in the method spotter, eg =.)*

and search for classes.

*(Search for String in the package spotter.)'>
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

'We can also create a Note, which is just like a Playground, except that it starts with a text snippet, and we normally give it a title.

*(Add a title and some text.)*

Just like with a Playground, we can add new snippets, by clicking on the `+` or using keyboard shortcuts.

*(Add a code snippet.)*

We can move snippets around with the menu in the bottom right, or with shortcuts.

*(Move the code snippet up and down, indent and dedent.)*

The Playgrounds and Notes that you create are saved in your personal Lepiter database.

*(Show the db and show the pages are there in the Pages view.)*

I use my Lepiter database to keep track of projects, tasks, frequently asked questions and random notes.

*(Go back to the ToC view.)*

You can have multiple databases and move pages between them.

*(Click on the database button at bottom left.)*

A page is a live object, which you can inspect.

*(Click on the `(i)` button.)*

We can explore various views, such as the *Snippets* view or the *StoreString*, which will programmatically generate a copy of the page.

Lepiter pages are saved to the file system.

*(Click on the *File* button and go to the *Path* and *Contents* views.)*

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

'A Playground is Lepiter page with a snippet where you can experiment with Pharo code.

*(Click on the Playground button.)*

For example, we can enter code like `3 + 4`, and `Inspect` the result.

*(Do it.)*

This opens a new pane with an Inspector showing numerous views of the result.

We can add a new code snippet by clicking on the `+` and selecting a new Pharo snippet (or we can just type Command-Return in the existing snippet).

*(Add a new code snippet.)*

If we enter the string `''hello''` into the new snippet and inspect it, we can go to the Items view and inspect each individual character.

*(Do it.)*

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

'## GT is a Data Explorer

An important use case for GT is as a tool for exploring arbitrary kinds of data.

Whether the data are on your file system or sitting on a network server, the approach is always the same:

First you retrieve the raw data, then you wrap each kind of data to explore as an object, and then you define textual or graphical views to answers questions about the data and to enable easy navigation.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #dataExplorer:);
		newTextWithFormat: (self asHeader: 'GT is a Data Explorer');
		element: [ self elementForPicture: 'blind-monks-ear.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> downloadGt: aSlide [
	<gtSlide>
	<text: 
'## Downloading GT

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

{ #category : #accessing }
GettingStartedWithGTSlideShow >> explainingSquarifiedTreemap: aSlide [
	<gtSlide>
	<text:

'Finally, learn how to use Lepiter notebooks to document your questions and understanding, with the help of code snippets and live example methods.

There are case studies in the GT Book, but a good one to start with is the explanation of the squaried treemap algorithm.

Look at how the notebook page explains the algorithm with the help of live, embedded examples, and domain-specific views.

*(Scroll down to the `squarifyWithSevenNodes` example. Inspect it, show the steps, and show the code again.)*'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #explainingSquarifiedTreemap:);
		pageNamed: 'Explaining the squarified treemap algorithm' from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> exploringSlideshow: aSlide [
	<gtSlide>
	<text:

'How do you get started with moldable development?

First of all, try to *focus on live objects* rather than code.

Instead of using the Coder to write code, get used to working in the Inspector.

Here we are inspecting a live instance of this slideshow instead of looking at the code that generates it.

We can always navigate to the code when we need to, but it is harder to navigate from the code to the instances.

*(Click on the *Browse class* button.)*

Second, learn how to *adapt the tools* by adding custom, domain-specific extensions.

*(Click on the second slide and go to the *Slide with text* view.)*

Custom views, actions, and searches are all examples of simple adaptations written as short methods for your domain objects.

*(Show the code of the *Slide with text* view. Then show the slide search and its code, and the *Play slideshow* button and its code. Each time highlight the pragma line.)*'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringSlideshow:);
		startPage: (self db pageNamed: 'Exploring the slideshow')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> exploringSlideshowPage [
	<gtExample>
	^ (LePage named: 'Exploring the slideshow')
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeExampleSnippet new
				exampleBehaviorName: #GettingStartedWithGTSlideShow;
				exampleSelector: #gettingStartedSlideshow;
				noCode: true;
				previewHeight: 700);
		yourself
]

{ #category : #example }
GettingStartedWithGTSlideShow >> gettingStartedSlideshow [
	"Example for demo purposes"
	<gtExample>
	<noTest>
	^ self class new
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> git: aSlide [
	<gtSlide>
	<text:
'You can version your code in a Git repository.

*(Show the code being committed to a HelloWorld repo.)*'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #git:);
		newFadedText: 'Getting started with the Git tool' asRopedText;
		element: [ GtGitStencil new ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> githubRestAPI: aSlide [
	<gtSlide>
	<text:

'You can find a good example of how to do this in the GT book page on the GitHub REST API case study.

You can download the JSON data of an organization on GitHub using standard tools,

*(Evaluate the first two snippets to get the JSON data.)*

parse the data,

*(Inspect the parse snippet.)*

and wrap it as an explorable object.

*(Wrap as a GhOrganization object.)*

We now have an explorable model of the feenk GitHub organization that shows us all it repositories, and for each repo

*(Select the `gtoolkit` repo.)*

the events and contributors.

*(Click on each of these.)*

These views are cheap to create.

*(Alt-click on the *Repositories* tab.)*

The *Repositories* views, for example, is defined by a few lines of boilerplate code.'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #githubRestAPI:);
		pageNamed: 'Working with a REST API: the GitHub case study' from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> graphQL: aSlide [
	<gtSlide>
	<text:

'With the help of the language workbench, GT can be extended to provide support for other languages.

Here we see a dedicated snippet for querying GitHub using the GraphQL query language.

*(Evaluate the first two snippets, set the context and inspect the last snippet. Click on the *Fields* and *Type* views.)*'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #graphQL:);
		startPage: (self db pageNamed: 'GraphQL')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> graphQLPage [
	<gtExample>
	^ (LePage named: 'GraphQL')
		addSnippet: (LeTextSnippet new
				string: 'Get your GitHub personal access token:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'githubAccessKeyFile := FileLocator home / ''.secrets'' / ''home-github.txt''.
githubAccessKey := githubAccessKeyFile contents trimBoth.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Download the GitHub GraphQL schema:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'aContext := GtGQLContext new
		url: ''https://api.github.com/graphql'';
		bearerToken: githubAccessKey;
		buildSchema.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'And run a query using the GraphQL snippet:';
				yourself);
		addSnippet: (GtGQLSnippet new
				input: '{
	"ownername": "feenkcom",
	"reponame": "gtoolkit"
}';
				operation: 'query Repository($ownername: String!, $reponame: String!) {
	repository(owner: $ownername, name: $reponame) {
		url
		description
	}
}';
				yourself);
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtBook: aSlide [
	"How to open a slide on the World with the book open?"

	<gtSlide>
	<text:

'*(Open the GT Book.)*

The Glamorous Toolkit Book is an example of a Lepiter database consisting of numerous linked Notebook pages that provide detailed documentation about GT.

You should start exploring GT by browsing the book.

*(Open the book.)*

Each page consists of snippets that may contain markdown text, executable code, live examples, or other kinds of content.

*(Open the page *About this book*.)*

For example, the page *About this book* contains a live Treemap with an overview of the organization of the book itself.

*(Scroll down to the treemap and click on some of the squares.)*'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #gtBook:);
		newFadedText: 'GT Book';
		element: [ aSlide world ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtWorld: aSlide [
	<gtSlide>
	<text:

'When we open GT, we see an image populated with live objects, and a number of tools we can use to interact with these objects.

*(If necessary, first hide the unneeded Home Sections.)*

```
GtShortSlideshow disableHomeSections.
```

At the left there is a list of such tools that we can fire up, and also at the top right there is a quick access menu to access several of these tools.

*(Click on the hamburger to reveal the tools.)*

There is also a button to save the current state of the image, should we wish to do so.

*(Mouse over the *Save* button.)*

At the center we also a see a GT Home card to quickly access a given project.

*(Mouse over the Book card to reveal the tooltip.)*

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

'GT can parse numerous languages out of the box.

*(Inspect the Rust snippet.)*'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #howToParseOtherLanguages:);
		pageNamed: 'How to parse sources in different languages' from: self gtBookName;
		yourself
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> howToWorkWithGitHub: aSlide [
	<gtSlide>
	<text:

'There are detailed instructions in the GT Book on how to work with GitHub.'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #howToWorkWithGitHub:);
		pageNamed: 'How to work with GitHub' from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> ide: aSlide [
	<gtSlide>
	<text:

'## GT is an IDE

GT can also be seen as a new kind of IDE.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #ide:);
		newTextWithFormat: (self asHeader: 'GT is an IDE');
		element: [ self elementForPicture: 'blind-monks-back.jpg' ]
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> initializeDb [
	db := nil.
	self db addPage: self uhmoPage.
	self db addPage: self ludoGamePage.
	self db addPage: self treemapPage.
	self db addPage: self graphQLPage.
	self db addPage: self exploringSlideshowPage.
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> knowledgeBase: aSlide [
	<gtSlide>
	<text: 

'## GT is a knowledge base

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

'***TODO: How to get started!***

## GT is a language workbench

GT is not just a Smalltalk environment.

It has been designed with modeling and analysis of legacy software in mind, so GT is also a language workbench.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #languageWorkbench:);
		newTextWithFormat: (self asHeader: 'GT is a language workbench');
		element: [ self elementForPicture: 'blind-monks-leg.jpg' ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> ludoGame: aSlide [
	"<gtSlide>"
	<text:

'**TODO**'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #ludoGame:);
		startPage: (self db pageNamed: 'An explorable Ludo game')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> ludoGamePage [
	<gtExample>
	^ (LePage named: 'An explorable Ludo game')
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeExampleSnippet new
				exampleBehaviorName: #GtLudoRecordingGameExamples;
				exampleSelector: #gameShowingAllMoves6;
				noCode: true;
				previewHeight: 700);
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> modelBuilder: aSlide [

	"I think we don't need this example as it overlaps with (1) the data explorer slides and (2) the moldable IDE slides at the end."

	"<gtSlide>"
	<text: 

'## GT is a model builder

GT can also be used to build arbitrary kinds of explorable models.

Instead of exploring pre-existing data, we just generate the model entities of interest.'>

	^ aSlide labelAndElement
		priority: (self priorityFor: #modelBuilder:);
		newTextWithFormat: (self asHeader: 'GT is a model builder');
		element: [ self elementForPicture: 'blind-monks-tail.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> moldableIDE: aSlide [
	"https://commons.wikimedia.org/wiki/File:Brooklyn_Museum_-_Blind_Men_Appraising_an_Elephant_-_Ohara_Donshu.jpg"

	<gtSlide>
	<text:

'## GT is a Moldable Development Environment

While all of these perspectives are valid, they miss the big picture.

GT is really an environment to support *moldable development*.

The key idea is that you should be able to *adapt* the development tools to your domain to make it easier to understand and *explain* the system by exposing what is interesting.'>

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
	^ (LePage named: 'PLACEHOLDER page')
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
		
		"modelBuilder:
			uhmoModel:
			ludoGame:
			treemapModel:"
		
		languageWorkbench:
			howToParseOtherLanguages:
			graphQL:
		
		moldableIDE:
			exploringSlideshow:
			explainingSquarifiedTreemap:
		
		closing:
	)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> titleSlide: aSlide [
	<gtSlide>
	<text: 
'***TO DO:*** *Check that every section actually gives useful advice on how to get started, not just shows some demo.*

# Getting started with GT in 7''

Hello. My name is Oscar Nierstrasz.

Today I''d like to show you how to get started with the Glamorous Toolkit.'>

	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Getting started with GT in 7''')
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> treemapModel: aSlide [
	"<gtSlide>"
	<text:

'In this example we model an algorithm that produces a nicely proportioned TreeMap visualization.

We can explore the final results or an overview of the individual steps.

*(Click on the *Preview* and *Steps figure* views.)*

Or we can play through the steps to simulate the algorithm.

*(Go to *Steps list* view and walk through the steps.)*'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #treemapModel:);
		startPage: (self db pageNamed: 'The Squarified Treemap algorithm')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> treemapPage [
	<gtExample>
	^ (LePage named: 'The Squarified Treemap algorithm')
		addSnippet: (LeExampleSnippet new
				exampleBehaviorName: #GtGraphTreemapLayoutExamples;
				exampleSelector: #squarifyWithSevenNodes;
				noCode: true;
				previewHeight: 500);
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> uhmoModel: aSlide [
	"<gtSlide>"
	<text:

'In this case study, we explore how to model communication paths inside a typical restaurant.

*(NB: The UHMO model should have first been loaded.)*

```
Metacello new
   baseline: ''UhmoWithoutGT'';
   repository: ''github://feenkcom/uhmo/src'';
   load.
#BaselineOfUhmoWithoutGT asClass loadLepiter
```

Here Alice has ordered a steak and the order has propagated via John the waiter to Jeff the cook.'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #uhmoModel:);
		startPage: (self db pageNamed: 'Modeling the Cozy Corner restaurant')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> uhmoPage [
	<gtExample>
	^ (LePage named: 'Modeling the Cozy Corner restaurant')
		addSnippet: (LeExampleSnippet new
				exampleBehaviorName: #UCozyCornerExamples;
				exampleSelector: #placeOrderWithSteakToTable1ByAliceGuest;
				noCode: true;
				previewHeight: 700);
		yourself
]
