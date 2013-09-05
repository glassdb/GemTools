session cache
primeClassCache: aSession
	"Load class cache with the classes that make up the Browser panels."
	| cache |
	cache := Dictionary new.
	self classCache at: aSession put: cache.
	{
		GsOBColumn.
		GsOBGemStoneColumn. "backwards compatability for GLASS.230-dkh.177"
		
		GsOBColumnPanel. 
		GsOBFixedButtonPanel. 
		GsOBDefinitionPanel. 

		GsOBAnnotationPanel. 
		GsOBMercuryPanel.
		
		GsMDVersionPanel.
		GsMDLocalPanel.
		GsMDRemotePanel.
		GsMDResolutionPanel.
		
		GsMDConflictBrowser.
		
		GsOTStringHolderPanel.
		GsOTDefinitionPanel.

		GsOTWorkspace.
		GsOTWorkspacePanel.
		
		GsOTBasicInspector.
		GsOTChasingInspector.
		GsOTDebugInspectorPanel.
		GsOTInspectorDefinitionPanel.
		GsOTInspectorWorkspacePanel.
		
		GsOSMultipleSelectionColumnPanel.
		GsOSMultipleSelectionColumn.
		GsOSTestResultsPanel.
		GsOSTestRunner.
		
		GsMBOBConfigurationBrowser.
		
	} do: [:cl | | classOop |
		(classOop := [ cl classOop: aSession ] on: Error do: [:ex | "Transcript cr; show: cl name printString." ex return: nil ]) ~~ nil 
			ifTrue: [ cache at: classOop put: cl ]]
