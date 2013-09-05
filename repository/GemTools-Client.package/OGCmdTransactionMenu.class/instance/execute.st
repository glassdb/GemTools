execution
execute
	| menu |
	menu := (MenuMorph entitled: 'Transactions') defaultTarget: self.
	menu
		add: 'Commit'
		target: target
		selector: #commitTransaction.
	menu
		add: 'Abort'
		target: target
		selector: #abortTransaction.
	menu addLine.
	target supportsAutoAbort
		ifTrue: [
			target autoAbort
				ifTrue: [
					menu
						add: '[x] Auto Abort'
						target: self
						selector: #autoAbortOff]
				ifFalse: [
					menu
						add: '[o] Auto Abort'
						target: self
						selector: #autoAbortOn ]].
	target autoCommit
		ifTrue: [
			menu
				add: '[x] Auto Commit'
				target: self
				selector: #startLongTransaction]
		ifFalse: [
			menu
				add: '[o] Auto Commit'
				target: self
				selector: #stopLongTransaction].
	target autoMigrate
		ifTrue: [
			menu
				add: '[x] Auto Migrate'
				target: self
				selector: #autoMigrateOff]
		ifFalse: [
			menu
				add: '[o] Auto Migrate'
				target: self
				selector: #autoMigrateOn].
	menu popUpInWorld