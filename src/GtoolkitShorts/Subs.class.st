"
A minimal subtitle example for the Inspector Views short.
"
Class {
	#name : #Subs,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'GtoolkitShorts-Examples'
}

{ #category : #accessing }
Subs >> data: anArray [
	data := anArray
]

{ #category : #accessing }
Subs >> gtSubsFor: aView [
	<gtView>
	data ifNil: [ ^ aView empty ].
	^ aView columnedList
		title: 'Subtitles';
		priority: 10;
		items: [ data ];
		column: 'Number' text: [ :each | each at: 'Number' ] width: 20;
		column: 'Start' text: [ :each | each at: 'Start' ] width: 80;
		column: 'End' text: [ :each | each at: 'End' ] width: 80;
		column: 'Lines' text: [ :each | ' ' join: (each at: 'Lines') ]
]
