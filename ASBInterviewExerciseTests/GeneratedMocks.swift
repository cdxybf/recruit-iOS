// MARK: - Mocks generated from file: ASBInterviewExercise/Protocols/ApiServices/RestClientable.swift at 2022-05-21 23:19:29 +0000

//
//  RestClientable.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Cuckoo
@testable import ASBInterviewExercise

import Foundation
import HTTPStatusCodes


 class MockRestClientable: RestClientable, Cuckoo.ProtocolMock {
    
     typealias MocksType = RestClientable
    
     typealias Stubbing = __StubbingProxy_RestClientable
     typealias Verification = __VerificationProxy_RestClientable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RestClientable?

     func enableDefaultImplementation(_ stub: RestClientable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func post<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)  {
        
    return cuckoo_manager.call("post(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)",
            parameters: (url, parameter, completion),
            escapingParameters: (url, parameter, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.post(url: url, parameter: parameter, completion: completion))
        
    }
    
    
    
     func get<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)  {
        
    return cuckoo_manager.call("get(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)",
            parameters: (url, parameter, completion),
            escapingParameters: (url, parameter, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.get(url: url, parameter: parameter, completion: completion))
        
    }
    
    
    
     func put<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)  {
        
    return cuckoo_manager.call("put(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)",
            parameters: (url, parameter, completion),
            escapingParameters: (url, parameter, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.put(url: url, parameter: parameter, completion: completion))
        
    }
    
    
    
     func patch<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)  {
        
    return cuckoo_manager.call("patch(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)",
            parameters: (url, parameter, completion),
            escapingParameters: (url, parameter, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.patch(url: url, parameter: parameter, completion: completion))
        
    }
    
    
    
     func delete<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)  {
        
    return cuckoo_manager.call("delete(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)",
            parameters: (url, parameter, completion),
            escapingParameters: (url, parameter, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.delete(url: url, parameter: parameter, completion: completion))
        
    }
    

	 struct __StubbingProxy_RestClientable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func post<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRestClientable.self, method: "post(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRestClientable.self, method: "get(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func put<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRestClientable.self, method: "put(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func patch<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRestClientable.self, method: "patch(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func delete<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRestClientable.self, method: "delete(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RestClientable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func post<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.__DoNotUse<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void), Void> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("post(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.__DoNotUse<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void), Void> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("get(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func put<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.__DoNotUse<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void), Void> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("put(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func patch<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.__DoNotUse<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void), Void> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("patch(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func delete<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.Matchable, T>(url: M1, parameter: M2, completion: M3) -> Cuckoo.__DoNotUse<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void), Void> where M1.MatchedType == String, M2.OptionalMatchedType == [String: Any], M3.MatchedType == (Result<RestResponse<T>, ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any]?, (Result<RestResponse<T>, ApiServiceError>) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameter) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("delete(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RestClientableStub: RestClientable {
    

    

    
    
    
     func post<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
     func get<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
     func put<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
     func patch<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
     func delete<T>(url: String, parameter: [String: Any]?, completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: ASBInterviewExercise/Protocols/ApiServices/Transactions/TransactionsServiceable.swift at 2022-05-21 23:19:29 +0000

//
//  TransactionsServiceable.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Cuckoo
@testable import ASBInterviewExercise

import Foundation


 class MockTransactionsServiceable: TransactionsServiceable, Cuckoo.ProtocolMock {
    
     typealias MocksType = TransactionsServiceable
    
     typealias Stubbing = __StubbingProxy_TransactionsServiceable
     typealias Verification = __VerificationProxy_TransactionsServiceable

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: TransactionsServiceable?

     func enableDefaultImplementation(_ stub: TransactionsServiceable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void)  {
        
    return cuckoo_manager.call("getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getTransactionsList(completion: completion))
        
    }
    

	 struct __StubbingProxy_TransactionsServiceable: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getTransactionsList<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Result<[Transaction], ApiServiceError>) -> Void)> where M1.MatchedType == (Result<[Transaction], ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[Transaction], ApiServiceError>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTransactionsServiceable.self, method: "getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_TransactionsServiceable: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getTransactionsList<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<((Result<[Transaction], ApiServiceError>) -> Void), Void> where M1.MatchedType == (Result<[Transaction], ApiServiceError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((Result<[Transaction], ApiServiceError>) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class TransactionsServiceableStub: TransactionsServiceable {
    

    

    
    
    
     func getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: ASBInterviewExercise/Protocols/ConfigurationCollection.swift at 2022-05-21 23:19:29 +0000

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

