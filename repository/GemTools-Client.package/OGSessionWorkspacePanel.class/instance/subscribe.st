updating
subscribe
	self announcer 
		observe: OBSelectionChanged
		send: #refresh:
		to: self;
				
		observe: OBRefreshRequired
		send: #refresh:
		to: self.