Overrides
sourceForSmallIntegerDivision

	^'/ aNumber

"Returns the result of dividing the receiver by aNumber."

<primitive: 10>
(aNumber = 0) ifTrue: [^ self _errorDivideByZero].
(self == 0) ifTrue:[ ^ 0 ].
(aNumber _isInteger)
  ifTrue:[ ^ Fraction numerator: self denominator: aNumber ]
  ifFalse: [ ^ super / aNumber]
'.