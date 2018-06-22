"
TestCollectionExtensions
"
Class {
	#name : #TestCollectionExtensions,
	#superclass : #TestCase,
	#category : 'LangExtensions-Tests'
}

{ #category : #removing }
TestCollectionExtensions >> test_removeIfPresent_on_element_absent_from_filled_collection [

	| collectionWithout1 |
	
	collectionWithout1 := #(2 3 4 5 6) asOrderedCollection.
	self assertBlock: [ (collectionWithout1 removeIfPresent: 1) = nil ].
]

{ #category : #removing }
TestCollectionExtensions >> test_removeIfPresent_on_element_present_on_collection [

	| collectionWith1 |
	
	collectionWith1 := #(1 2 3 4 5 6) asOrderedCollection.
	self assertBlock: [ (collectionWith1 removeIfPresent: 1) = 1 ].
]

{ #category : #removing }
TestCollectionExtensions >> test_removeifPresent_with_empty_collection [

	| emptyCollection |
	
	emptyCollection := OrderedCollection new.
	self assertBlock: [ (emptyCollection removeIfPresent: 1) = nil ].
]
