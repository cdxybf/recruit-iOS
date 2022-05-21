// MARK: - Mocks generated from file: ASBInterviewExercise/Protocols/ConfigurationCollection.swift at 2022-05-21 21:12:02 +0000

//
//  ConfigurationCollection.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Cuckoo
@testable import ASBInterviewExercise

import Foundation


 class MockConfigurationCollection: ConfigurationCollection, Cuckoo.ProtocolMock {
    
     typealias MocksType = ConfigurationCollection
    
     typealias Stubbing = __StubbingProxy_ConfigurationCollection
     typealias Verification = __VerificationProxy_ConfigurationCollection

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ConfigurationCollection?

     func enableDefaultImplementation(_ stub: ConfigurationCollection) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var serverBaseUrl: String {
        get {
            return cuckoo_manager.getter("serverBaseUrl",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.serverBaseUrl)
        }
        
    }
    

    

    

	 struct __StubbingProxy_ConfigurationCollection: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var serverBaseUrl: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockConfigurationCollection, String> {
	        return .init(manager: cuckoo_manager, name: "serverBaseUrl")
	    }
	    
	    
	}

	 struct __VerificationProxy_ConfigurationCollection: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var serverBaseUrl: Cuckoo.VerifyReadOnlyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "serverBaseUrl", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class ConfigurationCollectionStub: ConfigurationCollection {
        
    
    
     var serverBaseUrl: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
    }
    

    

    
}

