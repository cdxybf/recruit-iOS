//
//  TransactionsListCellViewModel.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import RxCocoa

class TransactionsListCellViewModel {
    
    private let dateFormat = "yyyy-MM-dd hh:mm:ss"
    
    init(transaction: Transaction) {
        id = Driver.just(transaction.id)
        dateDescription = Driver.just(transaction.transactionDate.toFormattedString(format: dateFormat))
        summary = Driver.just(transaction.summary)
        credit = Driver.just(transaction.credit.description)
        debit = Driver.just(transaction.debit.description)
    }
    
    let id: Driver<Int64>
    let dateDescription: Driver<String>
    let summary: Driver<String>
    let credit: Driver<String>
    let debit: Driver<String>
}
