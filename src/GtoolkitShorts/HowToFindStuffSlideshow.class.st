Class {
	#name : #HowToFindStuffSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
HowToFindStuffSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractClasses: aSlide [
	<gtSlide>
	<text: 'We can easily find all abstract classes within a hierarchy by asking the root class for all classes within its hierarchy, and selecting those that respond positively to the “isAbstract” message.

*(Evaluate both snippets)*'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractClasses:);
		heading: 'Which classes are abstract?';
		addCodeSnippet: 'Object withAllSubclasses
	select: #isAbstract';
		addCodeSnippet: 'Collection withAllSubclasses
	select: #isAbstract'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractCollectionPackageMethods: aSlide [
	<gtSlide>
	<text:
'If instead we want to find all the abstract methods in classes within all the Collection packages, we can specify a different filter.

*(Evaluate it.)*'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractCollectionPackageMethods:);
		heading: 'Finding abstract methods in Collection packages';
		addCodeSnippet: '#subclassResponsibility gtSenders
	& ''Collection'' gtPackageMatches'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractMethods: aSlide [
	<gtSlide>
	<text: 'We already saw that we can find the abstract methods of a class by asking for those that send “subclassResponsibility”.

*(Evaluate the first snippet.)*

Alternatively we can just select those that respond “true” to the “isAbstract” message.

*(Evaluate second snippet.)*

So now we can query a hierarchy for all its classes that have at least one abstract method.

*(Last snippet.)*'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractMethods:);
		heading: 'Which methods are abstract?';
		typeTextSnippet: 'We can query for senders of subclassResponsibility';
		addCodeSnippet: 'String methods 
	select: [: m | 
		m sendsSelector: #subclassResponsibility ]';
		typeTextSnippet: 'Better yet, we just ask if they are abstract';
		addCodeSnippet: 'String methods select: #isAbstract';
		typeTextSnippet: '... and we can find all classes in a hierarchy with abstract methods';
		addCodeSnippet: 'Collection withAllSubclasses
	select: [ :class | class methods 
		anySatisfy: #isAbstract ]'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractMethodsQuery: aSlide [
	<gtSlide>
	<text: 'For example, this query returns all the senders of the subclassResponsibility message.

In the metrics view we can see that there are over 4000 abstract methods in the system.

*(Evaluate and click on the Metrics view.)*

Suppose we just want to find the abstract methods in the String class. In that case we can compose this query as follows.'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractMethodsQuery:);
		heading: 'Finding all abstract methods';
		addCodeSnippet: '#subclassResponsibility gtSenders'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractStringMethods: aSlide [
	<gtSlide>
	<text: 'Here we apply a filter to the previous query, restricting the scope of the result to the String class. As expected, we find just four abstract methods.

*(Evaluate it.)*'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractStringMethods:);
		heading: 'Finding abstract methods in the String class';
		addCodeSnippet: '#subclassResponsibility gtSenders
	& String gtMethodsInClass'
]

{ #category : #accessing }
HowToFindStuffSlideshow >> asHeading: aString [
	^ (aString asRopedText)
		glamorousRegularFont;
		bold;
		fontSize: 24
]

{ #category : #accessing }
HowToFindStuffSlideshow >> asHeadingCode: aString [
	^ aString asRopedText
		glamorousMonospace;
		fontSize: 24
]

{ #category : #slides }
HowToFindStuffSlideshow >> closing: aSlide [
	<gtSlide>
	<text: 'You''ll find more GT in 7'' videos on our YouTube channel, or you can explore GT by downloading it from gtoolkit.com.

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
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
HowToFindStuffSlideshow >> concatenateStrings: aSlide [
	<gtSlide>
	<text: 'For example, suppose we don''t remember how to concatenate two Strings, or two collections.

To find this, we just create a new instance of MethodFinder, and send it “#findMethodsByExampleInput:andExpectedResult:”.

In this case we are looking for a message to send to “foo” with argument “bar”, returning “foobar”.

*(Evaluate it.)*

The answer we are looking for is the comma operator., which works for any kind of collection, not just Strings.'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #concatenateStrings:);
		heading: 'How do I concatenate two Strings?';
		addCodeSnippet: 'MethodFinder new
	findMethodsByExampleInput: {''foo'' . ''bar''}
	andExpectedResult: ''foobar'''
]

{ #category : #slides }
HowToFindStuffSlideshow >> concreteClassAbstractMethods: aSlide [
	<gtSlide>
	<text: 'Now we can ask the interesting question, which classes are not flagged as abstract, but do have abstract methods?

*(First snippet.)*

There are several Collection classes that really should be abstract, including String.

*(Second snippet.)*

And there are over a thousand in the system as a whole, suggesting we may be wise not to trust the “isAbstract” message for classes.'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #concreteClassAbstractMethods:);
		heading: 'Which “concrete” classes have abstract methods?';
		addCodeSnippet: '(Collection withAllSubclasses
	reject: #isAbstract)
	select: [ :class | class methods 
		anySatisfy: #isAbstract ]';
		addCodeSnippet: '(Object withAllSubclasses
	reject: #isAbstract)
	select: [ :class | class methods 
		anySatisfy: #isAbstract ]'
]

{ #category : #slides }
HowToFindStuffSlideshow >> drilling: aSlide [
	<gtSlide>
	<text: 'Sometimes you want to find code behind the UI, but you don''t know where to start looking. In this case you can “drill” into the UI and explore the tree of elements.'>
	^ aSlide title
		priority: (self priorityFor: #drilling:);
		titleWithFormat: (self asHeader: 'Drilling into UI code')
]

{ #category : #initialization }
HowToFindStuffSlideshow >> exploringCharacterViews: aSlide [
	<gtSlide>
	<text: 'If we explore the ''hello'' String, we find that individual characters have a unicode representation. By Option- (or Alt-) clicking on the “Details” tab, we can see the code that generates this view.

*(Navigate to the $h character, go to the Details tab, and see the source code.)*

We can copy-paste the relevant code to the Playground of the character to verify that this code does what we expect.

*(Copy-paste the ''(String streamContents: ...'' code into the playground and inspect it.)*

This also works for buttons. For example, we can explore the code of the “Inspect Object in a New Window” button ...

*(Alt-click on it.)*

... and we can verify that it works.

*(Copy-paste the ''(GtPager ...'' code and do it.)*'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringCharacterViews:);
		startPage: (self db pageNamed: 'Exploring Character views');
		yourself
]

{ #category : #page }
HowToFindStuffSlideshow >> exploringCharacterViewsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring Character views')
		addSnippet: (LePharoSnippet new
				code: '''hello''';
				yourself);
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> exploringViewCode: aSlide [
	<gtSlide>
	<text: 'Sometimes you see a view of an object and wonder “How was that computed?”'>
	^ aSlide title
		priority: (self priorityFor: #exploringViewCode:);
		titleWithFormat: (self asHeader: 'Exploring view code')
]

{ #category : #slides }
HowToFindStuffSlideshow >> findingShortcuts: aSlide [
	"<gtSlide>"
	^ aSlide lepiterPage
		priority: (self priorityFor: #findingShortcuts:);
		startPage: (self db pageNamed: 'Finding shortcuts');
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> findingShortcutsEmpty: aSlide [
	<gtSlide>
	<text: 'We can increase or decrease the font size of a Lepiter page by typing CMD = or CMD -, but how does it work?

*(Demonstrate this. Open the `Finding shortcuts` page in a new window.)*

```
HowToFindStuffSlideshow new openFindingShortcutsPageInWindow
```

By holding the SHIFT CONTROL and OPT keys and clicking on a UI element, we can explore it.

*(Do this.)*

We can now explore the tree of elements. We can inspect one of these, and see in the Shortcuts view the current key bindings.

*(Pick an element, double-click, then inspect it in a new window and go to the Shortcuts view. Click on Increase font size and see the code.)*

We see that “self increaseFontSize” is sent to the LePageToolContentTreeElement instance.

We can try out the code to verify it.

*(Copy the “self increaseFontSize” code. Inspect the LePageToolContentTreeElement instance in a new window. Close the drilling view of the page. Paste the code into the tree element''s playground and do it to verify that the page changes its font size.)*'>
	^ aSlide empty priority: (self priorityFor: #findingShortcutsEmpty:)
]

{ #category : #page }
HowToFindStuffSlideshow >> findingShortcutsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Finding shortcuts')
		addSnippet: (LeTextSnippet new
				string: 'Typing CMD= and CMD- will increase or decrease the size of all the fonts in this page, but how does the shortcut work?';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Holding SHIFT CONTROL OPT while clicking in the page will allow us to drill into the UI elements.';
				yourself);
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> gtQueries: aSlide [
	<gtSlide>
	<text: 'What if we are looking for something more complex, like all the abstract methods within a package? In this case GT queries are useful.'>
	^ aSlide title
		priority: (self priorityFor: #gtQueries:);
		titleWithFormat: (self asHeader: 'GT queries')
]

{ #category : #initialization }
HowToFindStuffSlideshow >> initializeDb [
	self db addPage: self exploringCharacterViewsPage.
	self db addPage: self findingShortcutsPage.
]

{ #category : #slides }
HowToFindStuffSlideshow >> isAbstract: aSlide [
	<gtSlide>
	<text: 'Suppose, for example, we have learned that classes respond to the message “isAbstract”.

For instance the Collection class is abstract.

*(Evaluate the first snippet ...)*

Curiously, String is not abstract, though its asByteArray method is.

*(and the next two.)*'>
	^ aSlide headingAndCode
		priority: (self priorityFor: #isAbstract:);
		headingWithFormat: (self asHeading: 'Classes and methods respond to ')
				, (self asHeadingCode: 'isAbstract');
		addCodeSnippet: 'Collection isAbstract';
		addCodeSnippet: 'String isAbstract';
		addCodeSnippet: '(String >> #asByteArray) isAbstract'
]

{ #category : #slides }
HowToFindStuffSlideshow >> methodFinder: aSlide [
	<gtSlide>
	<text: 'Sometimes you are looking for a method that does something you want, but you have no idea what message to send. In this case the MethodFinder is handy.'>
	^ aSlide title
		priority: (self priorityFor: #methodFinder:);
		titleWithFormat: (self asBigCode: 'MethodFinder')
]

{ #category : #accessing }
HowToFindStuffSlideshow >> openFindingShortcutsPageInWindow [
	| page |
	page := self db pageNamed: 'Finding shortcuts'.
	GtPager
		openWrappedOn: (LePagePhlowTool page: page)
		title: (page title format: {self})
]

{ #category : #accessing }
HowToFindStuffSlideshow >> queryingPharoCodePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #queryingPharoCodePage:);
		pageNamed: 'Querying Pharo code' from: self gtBookName;
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> queryingSmalltalk: aSlide [
	<gtSlide>
	<text: 'To answer certain questions about the code, you may have to directly query the classes and methods of the system.'>
	^ aSlide title
		priority: (self priorityFor: #queryingSmalltalk:);
		titleWithFormat: (self asHeader: 'Querying Smalltalk classes and methods ')
]

{ #category : #slides }
HowToFindStuffSlideshow >> sendersAndImplementors: aSlide [
	<gtSlide>
	<text: 'We can also quickly find senders and implementors of messages using keyboard shortcuts — command N for seNders, and command M for iMplementors.'>
	^ aSlide title
		priority: (self priorityFor: #sendersAndImplementors:);
		titleWithFormat: (self asHeader: 'seNders and iMplementors')
]

{ #category : #constants }
HowToFindStuffSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		spotter:
			spotterExample:
		
		sendersAndImplementors:
			stringAsByteArray:
		
		gtQueries:
			#abstractMethodsQuery:
			#abstractStringMethods:
			#abstractCollectionPackageMethods:
			#queryingPharoCodePage:
		
		queryingSmalltalk:
			isAbstract:
			abstractClasses:
			abstractMethods:
			concreteClassAbstractMethods:
			workingWithCollectionsPage:
			understandingCollectionsPage:

		methodFinder:
			concatenateStrings:
		
		exploringViewCode:
			#exploringCharacterViews:
		
		drilling:
			findingShortcutsEmpty:
			"findingShortcutsPage:"
		
		closing:
	)
]

{ #category : #slides }
HowToFindStuffSlideshow >> spotter: aSlide [
	<gtSlide>
	<text: 'Let''s start with Spotter, a tool that allows you to search for entities by name.'>
	^ aSlide title
		priority: (self priorityFor: #spotter:);
		titleWithFormat: (self asHeader: 'Spotter')
]

{ #category : #slides }
HowToFindStuffSlideshow >> spotterExample: aSlide [
	<gtSlide>
	<text: 'For example, we can search for “String”, which will find us the String class, and open a Coder for us.

*(Enter “String” and accept to open a Coder.)*

However, we can also use Spotter to dive in and express more detailed queries.

*(Close the coder and return to Spotter.)*

Spotter shows us classes, packages and methods that match the “String” query.

*(Scroll through them.)*

We can also dive into the String class within Spotter.

*(Select the arrow next to the String class.)*

Now we see instance methods, inherited methods, and other features specific to the String class.

*(Scroll through them.)*

We can now express queries specific to this context. If we type “asB” we see only the matching methods.

*(Type “asB” and select of the three instance methods in turn.)*

We see that “asByteArray” sends “self subclassResponsibility”.

This means that the method is abstract.

*(Browse it, select and copy “subclassResponsibility”, and open the code bubble.)*

If we search for “subclassResponsibility” we see that there is just one implementor, but over 4000 senders. If we dive into the senders and query for “String”, we see it has four abstract methods.

*(Dive into the senders and query for “String”. Select the asByteArray method to open the coder.)*'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #spotterExample:);
		element: [ GtSpotterLiveSlide new asElement ]
]

{ #category : #slides }
HowToFindStuffSlideshow >> stringAsByteArray: aSlide [
	<gtSlide>
	<text: 'From the Coder view of the String>>#asByteArray method, we can position the mouse in any message and type Command-M to find the implementors. For example, we can quickly see that there is just one method that implements “subclassResponsibility”, and there are many senders.

*(Click inside “subclassResponsibility” and perform Cmd-M and then Cmd-N)*

Searching for senders is especially useful to understand how to use an API.

For example, if we ask for senders of “allRangesOfRegexMatches:”, we immediately find a test that illustrates its usage.

*(Open the allRangesOfRegexMatches: method, Cmd-N, and look at RxMatcherTest>>#testStringAllRangesOfRegexMatches.)*'>
	^ aSlide element
		priority: (self priorityFor: #stringAsByteArray:);
		element: [ (GtCoder forClass: String) createInPager maximized asElement ]
]

{ #category : #slides }
HowToFindStuffSlideshow >> titleSlide: aSlide [
	<gtSlide>
	<text: 'Hello. My name is Oscar Nierstrasz. Today I''d like to show you how to find things in GT.'>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'How to find stuff in GT in 7''')
]

{ #category : #accessing }
HowToFindStuffSlideshow >> understandingCollectionsPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #understandingCollectionsPage:);
		pageNamed: 'Understanding Smalltalk classes and metaclasses'
			from: self gtBookName;
		yourself
]

{ #category : #accessing }
HowToFindStuffSlideshow >> workingWithCollectionsPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #workingWithCollectionsPage:);
		pageNamed: 'Working with collections in Pharo' from: self gtBookName;
		yourself
]
