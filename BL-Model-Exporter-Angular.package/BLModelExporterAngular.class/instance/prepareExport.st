api
prepareExport
	root := (FileSystem disk workingDirectory / model name) asFileReference.
	rootPhases := root / 'phases'