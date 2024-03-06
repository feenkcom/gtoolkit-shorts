Class {
	#name : #GtHomeShortsSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'GtoolkitShorts-Sections'
}

{ #category : #accessing }
GtHomeShortsSection >> eddCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'EDD in 7''';
		description: 'EDD short video';
		priority: 20;
		pageName: 'EDD tutorial';
		databaseName: 'GT Shorts Notebook';
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtHomeShortsSection >> overviewCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'GT Shorts Overview';
		description: 'GT Shorts Overview';
		priority: 10;
		pageName: 'GT Shorts Overview';
		databaseName: 'GT Shorts Notebook';
		assertInvariant;
		yourself
]

{ #category : #accessing }
GtHomeShortsSection >> sectionTitle [
	^ 'GT Shorts Notebook'
]
