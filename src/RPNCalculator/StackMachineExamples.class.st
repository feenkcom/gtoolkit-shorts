Class {
	#name : #StackMachineExamples,
	#superclass : #Object,
	#traits : 'TGtExampleAssertable',
	#classTraits : 'TGtExampleAssertable classTrait',
	#category : #RPNCalculator
}

{ #category : #accessing }
StackMachineExamples >> add3and4 [
	<gtExample>
	| result |
	result := self push3and4.
	result add.
	self assert: result stack size equals: 1.
	self assert: result top equals: 7.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> div3and4 [
	<gtExample>
	| result |
	result := self push3and4.
	result div.
	self assert: result stack size equals: 1.
	self assert: result top equals: 3/4.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> dup3 [
	<gtExample>
	| result |
	result := self push3.
	result dup.
	self assert: result stack size equals: 2.
	self assert: result top equals: 3.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> emptyStack [
	<gtExample>
	| result |
	result := StackMachine new.
	self assert: result stack isEmpty.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> emptyStackCantDivideByZero [
	<gtExample>
	| result |
	result := self emptyStack.
	result push: 1.
	result push: 0.
	self should: [ result div ] raise: AssertionFailure.
	self assert: result stack size equals: 2.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> emptyStackCantPop [
	<gtExample>
	| result |
	result := self emptyStack.
	self should: [ result pop ] raise: AssertionFailure.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> emptyStackCantTop [
	<gtExample>
	| result |
	result := self emptyStack.
	self should: [ result top ] raise: AssertionFailure.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> mul3and4 [
	<gtExample>
	| result |
	result := self push3and4.
	result mul.
	self assert: result stack size equals: 1.
	self assert: result top equals: 12.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> push3 [
	<gtExample>
	| result |
	result := self emptyStack.
	result push: 3.
	self assert: result stack size equals: 1.
	self assert: result top equals: 3.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> push3and4 [
	<gtExample>
	| result |
	result := self push3.
	result push: 4.
	self assert: result stack size equals: 2.
	self assert: result top equals: 4.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> sqrt3and3 [
	<gtExample>
	| result |
	result := self dup3.
	result
		mul;
		sqrt.
	self assert: result stack size equals: 1.
	self assert: result top equals: 3.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> sub3and4 [
	<gtExample>
	| result |
	result := self push3and4.
	result sub.
	self assert: result stack size equals: 1.
	self assert: result top equals: -1.
	^ result
]

{ #category : #accessing }
StackMachineExamples >> swap3and4 [
	<gtExample>
	| result |
	result := self push3and4.
	result swap.
	self assert: result stack size equals: 2.
	self assert: result top equals: 3.
	^ result
]
