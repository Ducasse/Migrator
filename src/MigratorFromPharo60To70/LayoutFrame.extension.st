Extension { #name : #LayoutFrame }

{ #category : #'*MigratorFromPharo60To70' }
LayoutFrame class >> fractions: fractionsOrNil [
	"Do not use this API if you do not have already have the rectangles that should be passed as argument. 
	If you are creating the rectangles representing the numbers you need, better use the accessors: 
	(LayoutFrame identity
			topOffset: topHeight;
			bottomFraction: 0;
			bottomOffset: self buttonsBarHeight;
			leftOffset: -1;
			rightOffset: 1)	
	
	In particular 
	do not use (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)) but favor 
	LayoutFrame identity which is faster and more readable.
	"
	
	self deprecated: 'Deprecated in Pharo 7. Should not be used. It will be removed'. 
	
	^ self fractions: fractionsOrNil offsets: nil
]

{ #category : #'*MigratorFromPharo60To70' }
LayoutFrame >> fractions: fractionsOrNil [
	self deprecated: 'Do not use this method. It forces to create spurious objects for nothing.'.
	^ self fractions: fractionsOrNil offsets: nil
]

{ #category : #'*MigratorFromPharo60To70' }
LayoutFrame >> fractions: fractionsOrNil offsets: offsetsOrNil [

	| fractions offsets |
	self deprecated: 'Do not use this method. It forces to create spurious objects (rectangle or points) for nothing.'.
	fractions := fractionsOrNil ifNil: [0@0 extent: 0@0].
	offsets := offsetsOrNil ifNil: [0@0 extent: 0@0].
	
	^self
		topFraction: fractions top offset: offsets top;
		leftFraction: fractions left offset: offsets left;
		bottomFraction: fractions bottom offset: offsets bottom;
		rightFraction: fractions right offset: offsets right

]

{ #category : #'*MigratorFromPharo60To70' }
LayoutFrame class >> fractions: fractionsOrNil offsets: offsetsOrNil [
	"Do not use this API if you do not have already have the rectangles that should be passed as arguments. 
	If you are creating the rectangles representing the numbers you need, better use the accessors: 
	(LayoutFrame identity
			topOffset: topHeight;
			bottomFraction: 0;
			bottomOffset: self buttonsBarHeight;
			leftOffset: -1;
			rightOffset: 1)	
	"
	| fractions offsets |
	
	self deprecated: 'Deprecated in Pharo 7. Should not be used. It will be removed'. 	
	
	fractions := fractionsOrNil ifNil: [0@0 extent: 0@0].
	offsets := offsetsOrNil ifNil: [0@0 extent: 0@0].
	^self new
		topFraction: fractions top offset: offsets top;
		leftFraction: fractions left offset: offsets left;
		bottomFraction: fractions bottom offset: offsets bottom;
		rightFraction: fractions right offset: offsets right

]

{ #category : #'*MigratorFromPharo60To70' }
LayoutFrame class >> offsets: offsetsOrNil [
	"read comment of fractions:offsets: please!"

	self deprecated: 'Deprecated in Pharo 7. Should not be used. It will be removed'. 
	
	^ self fractions: nil offsets: offsetsOrNil
]
