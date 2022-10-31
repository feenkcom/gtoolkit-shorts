Class {
	#name : #Postcard,
	#superclass : #Object,
	#category : #GtoolkitShorts
}

{ #category : #accessing }
Postcard >> exampleWithNumber: x [
	"A ""complete"" Pharo syntax"

	<syntaxOn: #postcard>
	| y byteArray |
	true & false not & nil isNil 
		ifFalse: [ self perform: #add: with: x ].

	y := thisContext stack size 
		+ super class methods size.

	byteArray := #[2 2r100 8r20 16rFF].

	{-42.
		byteArray.
		#($a #a #'I''m' 'a' 1.0 1.23e2 3.14s2 1)}
		do: [ :each | 
			| var |
			var := Transcript
					show: each class name;
					show: Character cr ].
	^ x < y
]
