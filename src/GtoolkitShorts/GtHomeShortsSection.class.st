Class {
	#name : #GtHomeShortsSection,
	#superclass : #GtHomeSection,
	#category : #'GtoolkitShorts-Sections'
}

{ #category : #accessing }
GtHomeShortsSection >> create [
	| sectionContainer cardsContainer |
	sectionContainer := self newSectionContainer.
	sectionContainer addChild: (self newSectionTitle: 'Get started').
	cardsContainer := self newCardsContainer.

	cardsContainer
		addChild: (self
				newLepiterPageCardForPageNamed: 'GT Shorts Overview'
				inDatabaseNamed: 'feenkcom/gtoolkit-shorts/lepiter'
				withTitle: 'GT Shorts Overview'
				andDescription: 'GT Shorts Overview').

	sectionContainer addChild: cardsContainer.
	^ sectionContainer
]
