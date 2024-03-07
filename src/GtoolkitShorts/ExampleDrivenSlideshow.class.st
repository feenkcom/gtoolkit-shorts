Class {
	#name : #ExampleDrivenSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #slides }
ExampleDrivenSlideshow >> modelingPrices: aSlide [
	<gtSlide>
	<text:
'# TODO

# Modeling prices

Let''s work through an example where we want to model *prices* for goods, that may be *discounted* by fixed amounts, orpercentages, or even combinations.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Modeling prices');
		paragraphWithFormat: (self
				asText:
'
A price can be something like 100 EUR.
Prices can be added or multiplied.
A price can also be discounted either by a fixed amount of money, or by a percentage.
All operations can be combined arbitrarily.
And for audit purposes, we want to track all operations that lead to a concrete amount of money.
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> moneyClasses: aSlide [
	<gtSlide>
	<text:
'# TODO

# Money classes



'>
		^ aSlide headingAndCode
		setPriority;
		heading: 'Money classes';
		addTextSnippet: 'We already have classes that model amounts of money.';
		addCodeSnippet: '42 euros.';
		addCodeSnippet: '42 euros + 10 usd.';
		addElementSnippet: 'GtTMoneyUML new umlDiagram' height: 200
]

{ #category : #slides }
ExampleDrivenSlideshow >> placeholder: aSlide [
	<gtSlide>
	<text:
'# TODO

Placeholder
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
		modelingPrices:
		tddTrouble:
		moneyClasses:
		
		"summarySlide:"
		
		placeholder:
	)
]

{ #category : #slides }
ExampleDrivenSlideshow >> tddTrouble: aSlide [
	<gtSlide>
	<text:
'# TODO

# The Trouble with TDD

From the GT Book page:

*Where do tests come from?* When we write a test, we must “guess first” to imagine what we want to create (setup) and test (assertions).

*How do we write the simplest code that passes?* A failing test gives you a debugger context, but then what? You have to navigate somewhere else to add some missing classes or methods, navigate back to the test, and so on.

*What use is a green test?* Green tests can be used to detect regressions, but otherwise they don''t help you much to create new tests or explore the running system.
'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'The Trouble with TDD');
		paragraphWithFormat: (self
				asText:
'

Where do tests come from?

How do we write the simplest code that passes?

What use is a green test?
')
]

{ #category : #slides }
ExampleDrivenSlideshow >> title: aSlide [
	<gtSlide>
	<text:
'# TO DO

# Example-Driven Development

Example-Driven Development is superficially like Test-Driven Development, where you drive development by constructing tests methods that return example objects.

It sounds simple, but it actually changes the development process in some fundamental ways.
'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Example-Driven Development in 7''')
]
