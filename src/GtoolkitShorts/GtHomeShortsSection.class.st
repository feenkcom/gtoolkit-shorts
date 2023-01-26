Class {
	#name : #GtHomeShortsSection,
	#superclass : #GtHomeSection,
	#category : #'GtoolkitShorts-Sections'
}

{ #category : #accessing }
GtHomeShortsSection >> create [
"TODO"
	| sectionContainer cardsContainer |
	sectionContainer := self newSectionContainer.
	sectionContainer addChild: (self newSectionTitle: 'Get started').
	cardsContainer := self newCardsContainer.

	cardsContainer addChild: (self
		newHeaderCardWithTitle: 'Glamorous Toolkit'
		description: 'Read the Glamorous Toolkit book'
		size: 200@150
		content:
			(BrLabel new
				text: 'Glamorous Toolkit Book';
				aptitude: BrGlamorousLabelAptitude new
					bold;
				padding: (BlInsets all: 20)) asScalableElement
		action: [ :card | 
			| database startPage |
			database := LeDatabasesRegistry default currentLoadedDefaultLogicalDatabase 
				databaseNamed: 'Glamorous Toolkit Book'.
			startPage := database pageNamed: 'Glamorous Toolkit'.
			GtWorldUtility 
				showSpaceWithTitle: startPage title
				inPagerWith: [ startPage
					asLepiterPagePhlowTool asElementDo: [ :e | e ] ] asStencil
				from: card ]).
			
	sectionContainer addChild: cardsContainer.
	^ sectionContainer
]
