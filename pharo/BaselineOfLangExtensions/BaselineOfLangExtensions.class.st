Class {
	#name : #BaselineOfLangExtensions,
	#superclass : #BaselineOf,
	#category : 'BaselineOfLangExtensions'
}

{ #category : #baseline }
BaselineOfLangExtensions >> baseline: spec [ 
    
	<baseline>
        
	spec for: #'common' do: [
		spec 
			repository: 'github://vitormcruz/st_langextensions/pharo';
			package: #'LangExtensions-Core';
			package: #'LangExtensions-Tests' with: [ spec requires: 'LangExtensions-Core'];
			group: 'default' with: #('core' 'tests');
			group: 'core' with: #('LangExtensions');
			group: 'tests' with: #('LangExtensions-Tests') 
	].


]
