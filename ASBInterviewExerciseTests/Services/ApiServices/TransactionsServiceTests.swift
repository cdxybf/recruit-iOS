//
//  TransactionsServiceTests.swift
//  ASBInterviewExerciseTests
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import XCTest
import Cuckoo
import HTTPStatusCodes

@testable import ASBInterviewExercise

class TransactionsServiceTests: XCTestCase {
    func testTransactionsService_requestUrlIsCorrectlyAssembled() {
        // Arrange
        let restClient = MockRestClientable()
        let configuration = MockConfigurationCollection()
        let transactionsService = TransactionsService(restClient: restClient, configuration: configuration)
        let mockServerBaseUrl = "mock server base url"
        let expectedRequestUrl = "\(mockServerBaseUrl)\(transactionsService.transactionsUrl)"
        var actualRequestUrl = ""
        
        stub(restClient) { stub in
            let handler: ParameterMatcher<(Result<RestResponse<[Transaction]>, ApiServiceError>) -> Void> = anyClosure()
            let parameter: ParameterMatcher<[String: Any]?> = any([String: Any]?.self)
            when(stub.get(url: anyString(), parameter: parameter, completion: handler)).then { url, _, _ in
                actualRequestUrl = url
            }
        }
        
        stub(configuration) { stub in
            when(stub.serverBaseUrl.get).thenReturn(mockServerBaseUrl)
        }
        
        // Act
        transactionsService.getTransactionsList { _ in }
        
        // Assert
        XCTAssertEqual(actualRequestUrl, expectedRequestUrl)
    }
    
    func testTransactionsService_returnsExpectedResponseForRestClientFailureResponse() {
        // Arrange
        let restClient = MockRestClientable()
        let configuration = MockConfigurationCollection()
        let transactionsService = TransactionsService(restClient: restClient, configuration: configuration)
        let mockHttpStatusCode = HTTPStatusCode.badRequest
        let mockRestResponseErrorCode = ApiServiceError.ErrorType.server
        let mockRestResponseErrorMessage = "mock error message"
        var apiServiceError: ApiServiceError?
        let completionHandler: ((Result<[Transaction], ApiServiceError>) -> Void) = { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                apiServiceError = error
            }
        }
        
        stub(restClient) { stub in
            let handler: ParameterMatcher<(Result<RestResponse<[Transaction]>, ApiServiceError>) -> Void> = anyClosure()
            let parameter: ParameterMatcher<[String: Any]?> = any([String: Any]?.self)
            when(stub.get(url: anyString(), parameter: parameter, completion: handler)).then { _, _, completion in
                let responseError = ApiServiceError(errorType: mockRestResponseErrorCode,
                                            httpStatusCode: mockHttpStatusCode,
                                            message: mockRestResponseErrorMessage)
                completionHandler(.failure(responseError))
            }
        }
        
        stub(configuration) { stub in
            when(stub.serverBaseUrl.get).thenReturn("mock server base url")
        }
        
        // Act
        transactionsService.getTransactionsList(completion: completionHandler)
        
        // Assert
        XCTAssertNotNil(apiServiceError)
        XCTAssertEqual(apiServiceError!.errorType, mockRestResponseErrorCode)
        XCTAssertEqual(apiServiceError!.httpStatusCode, mockHttpStatusCode)
        XCTAssertEqual(apiServiceError!.errorDescription, mockRestResponseErrorMessage)
    }
    
    func testTransactionsService_returnsExpectedResponseForRestClientSuccessfulResponse() {
        // Arrange
        let restClient = MockRestClientable()
        let configuration = MockConfigurationCollection()
        let transactionsService = TransactionsService(restClient: restClient, configuration: configuration)
        var transactions: [Transaction]?
        let mockTransaction1 = Transaction(id: 1, transactionDate: Date(), summary: "mock summary 1", debit: 1, credit: 1)
        let mockTransaction2 = Transaction(id: 2, transactionDate: Date(), summary: "mock summary 2", debit: 2, credit: 2)
        let mockTransaction3 = Transaction(id: 3, transactionDate: Date(), summary: "mock summary 3", debit: 3, credit: 3)
        let mockTransactions = [mockTransaction1, mockTransaction2, mockTransaction3]
        let completionHandler: ((Result<[Transaction], ApiServiceError>) -> Void) = { result in
            switch result {
            case .success(let responseTransactions):
                transactions = responseTransactions
                break
            case .failure:
                break
            }
        }
        
        stub(restClient) { stub in
            let handler: ParameterMatcher<(Result<RestResponse<[Transaction]>, ApiServiceError>) -> Void> = anyClosure()
            let parameter: ParameterMatcher<[String: Any]?> = any([String: Any]?.self)
            when(stub.get(url: anyString(), parameter: parameter, completion: handler)).then { _, _, completion in
                completionHandler(.success(mockTransactions))
            }
        }
        
        stub(configuration) { stub in
            when(stub.serverBaseUrl.get).thenReturn("mock server base url")
        }
        
        // Act
        transactionsService.getTransactionsList(completion: completionHandler)
        
        // Assert
        XCTAssertNotNil(transactions)
        XCTAssertEqual(mockTransactions.count, transactions!.count)
        XCTAssertEqual(mockTransactions.first!.id, transactions!.first!.id)
        XCTAssertEqual(mockTransactions.first!.transactionDate, transactions!.first!.transactionDate)
        XCTAssertEqual(mockTransactions.first!.summary, transactions!.first!.summary)
        XCTAssertEqual(mockTransactions.first!.debit, transactions!.first!.debit)
        XCTAssertEqual(mockTransactions.first!.credit, transactions!.first!.credit)
    }
}
