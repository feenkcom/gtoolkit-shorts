Class {
	#name : #GettingStartedWithGTSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
GettingStartedWithGTSlideShow >> blindMenWithElephantSlide: aSlide [
	"Blind monks examining an elephant, an ukiyo-e print by Hanabusa Itchō (1652–1724). https://en.wikipedia.org/wiki/Hanabusa_Itchō"

	<gtSlide>
	<text: 'The Glamorous Toolkit is a *moldable development environment*, which means that it can be easily and cheaply adapted to variety of needs.

However, as in the parable of the blind men and the elephant, if you look too closely at one part, you may miss the big picture.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Blind monks examining an elephant';
		element: [ self elementForPicture: 'Blind_monks_examining_an_elephant.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> closing: aSlide [
	<gtSlide>
	<text: '# Closing

You''ll find more GT in 7'' videos on our YouTube channel, or you can explore GT by downloading it from gtoolkit.com.

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
				fontSize: 48;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> coder: aSlide [
	<gtSlide>
	<text: 'With the Coder you can create classes,

*(Create a Hello class in a HelloWorld package.)*

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
instance
	| example |
	<gtExample>
	example := Hello new.
	self assert: example hello equals: ''hello''.
	^ example
```

run examples as tests,

*(Run the examples.)*

search for methods,

*(Search for other methods in the method spotter, eg =.)*

and search for classes.

*(Search for String in the package spotter.)*'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Getting started with the Coder' asRopedText;
		element: [ GtCoder new createInPager maximized ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> creatingNotes: aSlide [
	"How to open a slide on the World with the book open?"

	<gtSlide>
	<text: 'A Note is just like a Playground, except that it starts with a text snippet, and should be given a name.

*(Add a title and some text.)*

As  before, we can add new snippets with the `+` button, or using keyboard shortcuts.

*(Add a code snippet.)*

We can move snippets around with the menu at the bottom right, or with shortcuts.

*(Move the code snippet up and down, indent and dedent.)*

All your Notes and Playgrounds are automatically stored in your personal Lepiter database.

*(Show the db and show the pages are there in the Pages view.)*

I use my Lepiter database to track projects, tasks, frequently asked questions and random notes.

*(Go back to the ToC view.)*

You can have multiple databases and move pages between them.

*(Click on the database button at bottom left.)*

A page is a live object, which you can inspect.

*(Click on the `(i)` button.)*

A Lepiter page has many views, such as the *Snippets* view, or *StoreString*, which will programmatically generate a copy of the page.

*(Inspect the `StoreString` to see the result.)*

Lepiter pages are saved to the file system.

*(Click on the *File* button and go to the *Path* and *Contents* views.)*

We can also interact with the page by sending it messages.

*(Open the playground and inspect `self database`.)*

Here we can inspect the Lepiter database of this page.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Creating Notes';
		element: [ aSlide world ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> creatingPlaygrounds: aSlide [
	<gtSlide>
	<text: 'A Playground is Lepiter page of *Pharo code snippets*.

*(Click on the Playground button.)*

We can enter code like `3 + 4`, and `Inspect` the result.

*(Do it.)*

This opens an Inspector offering various views of the result.

We can add a new code snippet by clicking on the `+`, or we can just type Command-Return in the existing snippet.

*(Add a new code snippet.)*

If we Inspect the string `''hello''`, and go to the *Items* view, we can inspect each individual character.

*(Do it.)*

The Inspector can always be used like this to explore arbitrary nested objects.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Creating Playgrounds';
		element: [ aSlide world ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> dataExplorer: aSlide [
	<gtSlide>
	<text: '## GT is a Data Explorer

An important use case for GT is as a tool for modeling and exploring arbitrary kinds of data.

The approach is always the same: wrap the data as domain objects, and then add custom views and actions to answer questions about the data, and enable exploration of the domain model.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'GT is a Data Explorer');
		element: [ self elementForPicture: 'blind-monks-ear.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> downloadGt: aSlide [
	<gtSlide>
	<text: '## Downloading GT

Let''s take a tour of the various parts that make up GT.

*(Open [](https://gtoolkit.com), download GT and run it.)*

First download Glamorous Toolkit for your platform and fire it up.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'Downloading GT');
		element: [ (self elementForPicture: 'blind-monks-trunk.jpg') size: 500 @ 300 ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> elementForPicture: aFilename [
	^ GtFileUtility imageElementFromFileReference: self picturesFolder / aFilename
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> explainingSquarifiedTreemap: aSlide [
	<gtSlide>
	<text: 'Finally, learn to use notebooks to document your questions and understanding, using both code snippets and live example methods.

A good case study to start with is the squarified treemap algorithm.

See how the notebook page explains the algorithm using live, embedded examples, and domain-specific views.

*(Scroll down to the `squarifyWithSevenNodes` example. Inspect it, show the steps, and show the code again.)*'>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Explaining the squarified treemap algorithm'
			from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> exploringSlideshow: aSlide [
	<gtSlide>
	<text: 'Then, when you are programming, try to *focus on live objects* rather than code.

Instead of using the Coder to program, get used to working in the Inspector.

Here we are inspecting a live instance of this slideshow instead of looking at the code that generates it.

We can always navigate to the code when we need to, but it is harder to navigate from the code to the instances.

*(Click on the *Browse class* button.)*

Next, learn how to *adapt the tools* by adding custom, domain-specific extensions.

*(Click on the second slide and go to the *Slide with text* view.)*

Custom views, actions, and searches are all examples of simple adaptations written as short methods for your domain objects.

*(Show the code of the *Slide with text* view. Then show the slide search and its code, and the *Play slideshow* button and its code. Each time highlight the pragma line.)*'>
	^ aSlide lepiterPage
		setPriority;
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
	<text: 'You can version your code in a Git repository.

*(Show the code being committed to a HelloWorld repo.)*

*(You may need to load it first.*)

```
Metacello new
	repository: ''github://onierstrasz/HelloWorld:main/src'';
	baseline: ''HelloWorld'';
	load
```'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Getting started with the Git tool' asRopedText;
		element: [  ";
		element: [ GtGitStencil new ]"(GtPager
				createWrappedOn: (GtGitPhlowTool new repository: (GtGitRepository forRepoNamed: 'HelloWorld')))
				maximized ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> githubRestAPI: aSlide [
	<gtSlide>
	<text: 'A good example in the GT book is the GitHub REST API case study.

You start by downloading the JSON data of an organization on GitHub using standard tools,

*(Evaluate the first two snippets to get the JSON data.)*

parse the data,

*(Inspect the parse snippet.)*

and wrap it as an explorable domain object.

*(Wrap as a GhOrganization object.)*

By adding custom views, we obtain an explorable model of the feenk GitHub organization that shows us all its repositories, and for each repo

*(Select the `gtoolkit` repo.)*

the events and contributors.

*(Click on each of these.)*

These views are cheap to create,

*(Alt-click on the *Repositories* tab.)*

typically with a few lines of boilerplate code.'>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Working with a REST API: the GitHub case study'
			from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> graphQL: aSlide [
	<gtSlide>
	<text: 'GT can be readily extended to support other languages.

Here is a dedicated snippet for querying GitHub using the GraphQL query language.

*(Evaluate the first two snippets, set the context and inspect the last snippet. Click on the *Fields* and *Type* views.)*'>
	^ aSlide lepiterPage
		setPriority;
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
	<gtSlide>
	<text: 'The GT Book is a Lepiter database of linked Notebook pages providing detailed documentation about GT.

You can start exploring GT by browsing the book.

*(Open the book.)*

Each page consists of snippets of markdown text, executable code, live examples, or other kinds of content.

*(Open the page *About this book*.)*

This page contains a live Treemap with an overview of the organization of the book itself.

*(Scroll down to the treemap and click on some of the squares.)*'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'GT Book';
		element: [ aSlide world ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtWorld: aSlide [
	"GtShortSlideshow disableHomeSections."

	<gtSlide>
	<text: 'GT consists of an image populated with live objects.

When you open GT, you see at the left a list of tools you can use to interact with these objects.

*(If necessary, first hide the unneeded Home Sections.)*

```
GtShortSlideshow disableHomeSections.
```

At the top right there is also a quick access menu.

*(Click on the hamburger to reveal the tools.)*

And there is a button to save the current state of the image, if you need to.

*(Mouse over the *Save* button.)*

At the center there are one or more home cards to quickly access a given project, in this case the GT Book.

*(Mouse over the Book card to reveal the tooltip.)*

Now let''s explore some of the classical use cases for GT.'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'GT World';
		element: [ aSlide world ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> headerSize [
	^ 40
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> howToParseOtherLanguages: aSlide [
	<gtSlide>
	<text: 'GT can parse numerous languages out of the box using SmaCC, the Smalltalk compiler compiler.

*(Inspect the Rust snippet.)*'>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'How to parse sources in different languages'
			from: self gtBookName;
		yourself
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> howToWorkWithGitHub: aSlide [
	<gtSlide>
	<text: 'There are detailed instructions in the GT Book on how to work with GitHub.'>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'How to work with GitHub' from: self gtBookName;
		yourself
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> ide: aSlide [
	<gtSlide>
	<text: '## GT is an IDE

GT can also be seen as a new kind of Integrated Development Environment.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'GT is an IDE');
		element: [ self elementForPicture: 'blind-monks-back.jpg' ]
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> initializeDb [
	db := nil.
	self db addPage: self uhmoPage.
	self db addPage: self ludoGamePage.
	self db addPage: self treemapPage.
	self db addPage: self petitParserPage.
	self db addPage: self graphQLPage.
	self db addPage: self exploringSlideshowPage.
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> knowledgeBase: aSlide [
	<gtSlide>
	<text: '## GT is a knowledge base

An important use case for GT is as a knowledge base for system documentation.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'GT is a knowledge base');
		element: [ self elementForPicture: 'blind-monks-head.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> languageWorkbench: aSlide [
	<gtSlide>
	<text: '## GT is a language workbench

GT is also a language workbench, supporting the modeling, analysis and execution of multiple languages.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'GT is a language workbench');
		element: [ self elementForPicture: 'blind-monks-leg.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> learningPharo: aSlide [
	<gtSlide>
	<text: 'How can you get started with moldable development?

Regardless of the specific use case, moldable development implies *programming*.

And when it comes to GT, this programming happens in Pharo, so first you should develop some skills in programming with Pharo and GT.

There are numerous pages in the GT book to help you get started with this.'>
	^ aSlide element
		setPriority;
		element: [ (GtPager
				createWrappedOn: (LePagePhlowTool
						page: (LeStorageExamples new gtBook
								pageNamed: 'A gentle introduction to Pharo Smalltalk'))) maximized ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> ludoGame: aSlide [
	"<gtSlide>"

	<text: '**TODO**'>
	^ aSlide lepiterPage
		setPriority;
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

	<text: '## GT is a model builder

GT can also be used to build arbitrary kinds of explorable models.

Instead of exploring pre-existing data, we just generate the model entities of interest.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'GT is a model builder');
		element: [ self elementForPicture: 'blind-monks-tail.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> moldableIDE: aSlide [
	"https://commons.wikimedia.org/wiki/File:Brooklyn_Museum_-_Blind_Men_Appraising_an_Elephant_-_Ohara_Donshu.jpg"

	<gtSlide>
	<text: '## GT is a Moldable Development Environment

While all of these perspectives are valid, they miss the big picture.

GT is really an environment to support *moldable development*.

The key idea is that you should be able to *adapt* the development tools to your domain to make it easier to understand and *explain* the system by exposing what is interesting.'>
	^ aSlide labelAndElement
		setPriority;
		newTextWithFormat: (self asHeader: 'GT is a Moldable Development Environment');
		element: [ self
				elementForPicture: 'Brooklyn_Museum_-_Blind_Men_Appraising_an_Elephant_-_Ohara_Donshu.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> petitParser: aSlide [
	<gtSlide>
	<text: 'While SmaCC can generate parsers from complex grammar specifications, for small tasks, it can be easier to start with PetitParser, a framework for building composable parsers.

Here is a tiny parser to recognize and compute arithmetic sums.

*(Inspect the result.)*'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Getting started with PetitParser')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> petitParserPage [
	<gtExample>
	^ (LePage named: 'Getting started with PetitParser')
		addSnippet: (LePharoSnippet new
				code: 'number := #digit asPParser star flatten
	==> [ :node | node asNumber ].

sum := (number trim , $+ asPParser trim , number trim)
		==> [ :node | node first + node third ].

sum parse: ''3 + 4''.';
				yourself);
		yourself
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> petitParserTutorial: aSlide [
	<gtSlide>
	<text: 'The GT Book offers a tutorial and an in-depth case study showing how to build an interpreter for a small language using PetitParser.'>
	^ aSlide lepiterPage
		setPriority;
		pageNamed: 'Parsing with PetitParser2' from: self gtBookName;
		yourself
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
			petitParser:
			petitParserTutorial:

		moldableIDE:
			learningPharo:
			exploringSlideshow:
			explainingSquarifiedTreemap:

		closing:
	)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> titleSlide: aSlide [
	<gtSlide>
	<text: '# Getting started with GT in 7''

Hello. My name is Oscar Nierstrasz.

Today I''d like to show you how to get started with the Glamorous Toolkit.'>
	^ aSlide title
		setPriority;
		titleWithFormat: (self asTitle: 'Getting started with GT in 7''')
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> treemapModel: aSlide [
	"<gtSlide>"

	<text: 'In this example we model an algorithm that produces a nicely proportioned TreeMap visualization.

We can explore the final results or an overview of the individual steps.

*(Click on the *Preview* and *Steps figure* views.)*

Or we can play through the steps to simulate the algorithm.

*(Go to *Steps list* view and walk through the steps.)*'>
	^ aSlide lepiterPage
		setPriority;
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

	<text: 'In this case study, we explore how to model communication paths inside a typical restaurant.

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
		setPriority;
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
