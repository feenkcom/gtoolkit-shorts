Class {
	#name : #ExampleDrivenSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #slides }
ExampleDrivenSlideshow >> addingAssertions: aSlide [
	<gtSlide>
	<text:
'TODO

## Adding assertions

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> addingViews: aSlide [
	<gtSlide>
	<text:
'TODO

## Adding a view

NB: our example is a moldable object

Forward to Money

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> complexScenario: aSlide [
	<gtSlide>
	<text:
'# TODO

# A complex scenario

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> concretePrice: aSlide [
	<gtSlide>
	<text: '# Introducing a Concrete Price

Just like we have a hierarchy of Money classes, we expect to end up with a hierarchy of Price objects, including an abstract root class, a concrete, fixed price, and several kinds of discounted prices.

Instead of designing this hierarchy up-front, we''ll develop it incrementally, driven by examples.

We''ll start with an example of a concrete (as opposed to an abstract) Price object.'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Introducing a Concrete Price');
		paragraphWithFormat: (self
				asText: '
A price can be something like 100 EUR.
Prices can be added or multiplied.
...
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> extractSuperclass: aSlide [
	<gtSlide>
	<text:
'# TODO

## Refactoring to a common superclass

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> extractingExamples: aSlide [
	<gtSlide>
	<text:
'TODO

## Extracting an example

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> factoryMethod: aSlide [
	<gtSlide>
	<text:
'TODO

## Create a factory method

We would  like to be able to create a price object by sending `asPrice` to a Money instance.

We start by inspecting the Money instance.

We prototype the code to create the Price instance.

We try it out.

And we extract the factory method.

We change the method to be an extension from the `EDDPrices` package.

Now we can simply write `100 euros asPrice`.'>
<demo:
'Inspect the money.
Open the playground.
Code up `ConcretePrice new money: self; yourself`
Inspect the result.
Extract the `asPrice` method.
Browse the new method.
Change the category to `*EDDPrices`.
Go back to the page and change the code to `100 euros asPrice` and inspect it.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Create a factory method')
]

{ #category : #page }
ExampleDrivenSlideshow >> factoryMethodPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Create a factory method')
	addSnippet: (LeTextSnippet new
			string: 'We want to be able to create a Price object by sending `asPrice` to a Money instance.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: '100 euros.';
			yourself);
	yourself
]

{ #category : #slides }
ExampleDrivenSlideshow >> modelingPrices: aSlide [
	<gtSlide>
	<text: '# Modeling prices

Let''s work through an example where we want to model *prices* for goods, that may be *discounted* by fixed amounts, or percentages, or even combinations of different types of discounts.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Modeling prices');
		paragraphWithFormat: (self
				asText: '
A price can be something like 100 EUR.
Prices can be added or multiplied.
A price can also be discounted either by a fixed amount of money, or by a percentage.
All operations can be combined arbitrarily.
And for audit purposes, we want to track all operations that lead to a concrete amount of money.
')
]

{ #category : #page }
ExampleDrivenSlideshow >> moneyClasses: aSlide [
	<gtSlide>
	<text: '## Money classes

To simplify our task, we assume that we already have classes that model different amounts of money, such as 42 € or 10 USD.


An amount of money is always in a *currency* such as euros or US dollars.

A *bag* of money consists of amounts of mized currencies.

A *zero* amount of money doesn''t have a currency.

All these classes have a common abstract *Money* superclass for shared behavior.
'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Money classes')
		
]

{ #category : #page }
ExampleDrivenSlideshow >> moneyClassesPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Money classes')
	addSnippet: (LeTextSnippet new
			string: 'We already have classes that model amounts of money.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: '42 euros.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: '42 euros + 10 usd.';
			yourself);
	addSnippet: (LeElementSnippet new
			code: 'GtTMoneyUML new umlDiagram.';
			codeVisible: false;
			elementHeight: 226;
			codeHeight: 50;
			yourself);
	yourself
]

{ #category : #slides }
ExampleDrivenSlideshow >> moneyExamples: aSlide [
	<gtSlide>
	<text: '## Money examples

The money classes are heavily covered by examples, which are essentially unit tests that also return examples objects.

This means that a passing test is not just green, but also returns an object that can be explored, resued as a setup for another example, or embedded into live documentation.

Unlike tests, however, examples don''t come “first” but they are extracted during the example-driven development process. 
'>
	<demo: 'Run all the examples.
Inspect the first example.
Open the code buubles to see how they are composed.
Go to the Examples map to show all the depenencies.
'>
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Money Examples';
		element: [ (GtCoderElement forClass: GtTMoneyExamples) createInPager maximized ]
]

{ #category : #slides }
ExampleDrivenSlideshow >> placeholder: aSlide [
	<gtSlide>
	<text:
'TODO

# Placeholder
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #accessing }
ExampleDrivenSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		title:
		tddTrouble:
			modelingPrices:
			moneyClasses:
			moneyExamples:
		
		concretePrice:
			startFromAnObject:
			factoryMethod:
			addingViews:
			extractingExamples:
			addingAssertions:
			supportingArithmetic:
		
		complexScenario:
			subclassQuickFix:
			extractSuperclass:
			subclassDiscountPercent:
		
		
		"summarySlide:"
		
		placeholder:
	)
]

{ #category : #slides }
ExampleDrivenSlideshow >> startFromAnObject: aSlide [
	<gtSlide>
	<text:
'## Start from an object

Instead of starting by imagining and writing a test case as an example method, we start by creating an instance of the class we need.

We first simply ask how we want to create our concrete instance of a price, and we write that code in a snippet.

Neither the class nor the constructor exist, so we create them as fixit operations.

Now we have a first concrete Price object!'>
<demo:
'Create the ConcretePrice class as a fixit.
Give it the `EDDPrices` package, the `Model` tag, and a `money` slot.
Create the accessors.
Change the argument of `money:` to `aMoney`.
Inspect the result.
Inspect its `money` slot.'>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Start from an object')
]

{ #category : #page }
ExampleDrivenSlideshow >> startFromAnObjectPage [
	<lePage>
	<gtExample>
	<noTest>
	^ (LePage named: 'Start from an object')
	addSnippet: (LeTextSnippet new
			string: 'As a first step, we just have to get an object to work with.';
			yourself);
	addSnippet: (LePharoSnippet new
			code: 'ConcretePrice new money: 100 euros.';
			yourself);
	yourself
]

{ #category : #slides }
ExampleDrivenSlideshow >> subclassDiscountPercent: aSlide [
	<gtSlide>
	<text:
'# TODO

## Adding discount by percent as a subclass

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> subclassQuickFix: aSlide [
	<gtSlide>
	<text:
'# TODO

## Adding discounted price as a subclass

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> supportingArithmetic: aSlide [
	<gtSlide>
	<text:
'TODO

## Supporting arithmetic

'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Outline');
		paragraphWithFormat: (self
				asText: 
'Paragraph body.
Possibly over multiple lines.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> tddTrouble: aSlide [
	<gtSlide>
	<text: '# The Trouble with TDD

With TDD, you develop code by incrementally adding a test for a new feature, which fails.

Then you write the “simplest code” that passes the new test.

 You add new tests, refactoring as needed, until you have fully covered everything that the new feature should fulfil, as specified by the tests.
 
 **But:**

*Where do tests come from?*

When you write a test, you actually have to “guess first” to imagine what objects to create, exercsie and test.

*How do we write the simplest code that passes?*

How do you know what code to write?

A test that fails gives you a debugger context, but then you have to go somewhere else to add some new classes and methods.

*What use is a green test?*

Green tests can be used to detect regressions, but otherwise they don''t help you much to create new tests or explore the running system.

*With Example-Driven Development we try to answer these questions.*
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The Trouble with TDD');
		paragraphWithFormat: (self
				asText: '

Where do tests come from?

How do we write the simplest code that passes?

What use is a green test?
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> title: aSlide [
	<gtSlide>
	<text: '# Example-Driven Development

Example-Driven Development is superficially like Test-Driven Development, where you drive development by constructing tests methods that return example objects.

It sounds simple, but it actually changes the development process in some fundamental ways.
'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Example-Driven Development in 7''')
]
