//
//  TransactionsServiceable.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

protocol TransactionsServiceable {
    func getTransactionsList(completion: @escaping (Result<[Transaction], ApiServiceError>) -> Void)
}
