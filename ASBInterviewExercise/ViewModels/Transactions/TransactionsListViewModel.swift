//
//  TransactionsListViewModel.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import RxRelay

class TransactionsListViewModel {
    
    private let _transactionsService: TransactionsServiceable
    
    init(transactionsService: TransactionsServiceable? = nil) {
        _transactionsService = transactionsService ?? Container.resolve(protocol: TransactionsServiceable.self)
    }
    
    let transactionsViewModel = PublishRelay<[TransactionsListCellViewModel]>()
    
    func loadTransactions() {
        _transactionsService.getTransactionsList { [weak self] result in
            switch result {
            case .success(let transactions):
                let sortedTransactionsViewModels = transactions.sorted { $0.transactionDate > $1.transactionDate }
                                                               .map { TransactionsListCellViewModel(transaction: $0) }
                self?.transactionsViewModel.accept(sortedTransactionsViewModels)
                break
            case .failure:
                self?.transactionsViewModel.accept([TransactionsListCellViewModel]())
            }
        }
    }
}
