Class {
	#name : #StackMachine,
	#superclass : #Object,
	#instVars : [
		'stack',
		'announcer'
	],
	#category : #RPNCalculator
}

{ #category : #accessing }
StackMachine >> add [
	self assertTwoArgs.
	self push: self pop + self pop
]

{ #category : #accessing }
StackMachine >> announcer [
	^ announcer
]

{ #category : #accessing }
StackMachine >> assertNotEmpty [
	self assert: self stack notEmpty description: 'Can''t pop an empty stack'
]

{ #category : #accessing }
StackMachine >> assertTwoArgs [
	self
		assert: self stack size >= 2
		description: 'Need two arguments on stack operator'
]

{ #category : #accessing }
StackMachine >> changed [
	self announcer announce: StackMachineChanged new
]

{ #category : #accessing }
StackMachine >> div [
	| denominator numerator |
	self assertTwoArgs.
	denominator := self top.
	self assert: denominator ~= 0 description: 'Can''t divide by zero'.
	self pop.
	numerator := self pop.
	self push: (numerator / denominator) asFloat
]

{ #category : #accessing }
StackMachine >> dup [
	self assertNotEmpty.
	self push: self top
]

{ #category : #accessing }
StackMachine >> gtItemsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Items';
		priority: 50;
		items: [ self stack ];
		actionUpdateButtonTooltip: 'Update item list';
		column: 'Index'
			text: [ :eachItem :eachIndex | eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Item' text: [ :eachItem | eachItem gtDisplayText ];
		updateWhen: StackMachineChanged in: self announcer
]

{ #category : #initialization }
StackMachine >> initialize [
	stack := OrderedCollection new.
	announcer := Announcer new
]

{ #category : #accessing }
StackMachine >> mul [
	self assertTwoArgs.
	self push: self pop * self pop
]

{ #category : #accessing }
StackMachine >> pop [
	| result |
	self assertNotEmpty.
	result := self stack removeLast.
	self changed.
	^ result
]

{ #category : #accessing }
StackMachine >> push: anInteger [
	self stack addLast: anInteger.
	self changed
]

{ #category : #accessing }
StackMachine >> sqrt [
	self assertNotEmpty.
	self push: self pop sqrt
]

{ #category : #accessing }
StackMachine >> stack [
	^ stack
]

{ #category : #accessing }
StackMachine >> sub [
	| subtrahend minuend |
	self assertTwoArgs.
	subtrahend := self pop.
	minuend := self pop.
	self push: minuend - subtrahend
]

{ #category : #accessing }
StackMachine >> swap [
	| top next |
	self assertTwoArgs.
	top := self pop.
	next := self pop.
	self
		push: top;
		push: next
]

{ #category : #accessing }
StackMachine >> top [
	self assertNotEmpty.
	^ self stack last
]
