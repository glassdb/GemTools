private
GLASS230dkh208PreDoit
	"SystemChangeAnnouncement compileMethod: ''item: ignored'' category: ''accessing''.'"
	
	^'MAObject compileMethod: ''migrateFrom: anotherObject instVarMap: otherivi
	"Override Object implementation to remove the constraint validations. MADynamicObjects fail validation tests"

	| cls othercls idx otheriviSize cons value |

	cls := self class.
	cons := cls _constraints.
	othercls := anotherObject class.
	cls classHistory == othercls classHistory 
		ifFalse:[ ^ cls _error: #errNotSameClassHist args: #[ othercls ]].
	otheriviSize := otherivi size.
	cls firstPublicInstVar to: otheriviSize do: [:i |
  		idx := otherivi at: i.
  		idx > 0 
			ifTrue: [
    				value := anotherObject instVarAt: idx.
    				anotherObject _checkConstraint: (cons at: i) onInstVarAt: idx.
    				self _unsafeAt: i put: value ]].
	self migrateIndexable: anotherObject myClass: cls otherClass: othercls.
'' category: ''migration'''