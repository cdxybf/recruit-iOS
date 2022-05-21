//
//  TransactionsService.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

class TransactionsService: BaseApiService, TransactionsServiceable {
    
    let transactionsUrl = "/500f2716604dc1e8e2a3c6d31ad01830/raw/4d73acaa7caa1167676445c922835554c5572e82/test-data.json"
    
    func getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void) {
        let url = "\(configuration.serverBaseUrl)\(transactionsUrl)"
        restClient.get(url: url, parameter: nil) { (result: Result<RestResponse<[Transaction]>, ApiServiceError>) in
            switch result {
            case .success(let response):
                completion(.success(response.responseObject!))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
