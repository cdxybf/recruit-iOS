//
//  TransactionsListTableViewCell.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import UIKit
import RxSwift

class TransactionsListTableViewCell: UITableViewCell {

    private let disposeBag = DisposeBag()
    var viewModel: TransactionsListCellViewModel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var transactionDateLabel: UILabel!
    @IBOutlet weak var creditLabel: UILabel!
    @IBOutlet weak var debitLabel: UILabel!
    
    func bindToViewModel(viewModel: TransactionsListCellViewModel) {
        self.viewModel = viewModel
        viewModel
            .summary
            .drive(summaryLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel
            .dateDescription
            .drive(transactionDateLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel
            .credit
            .drive(creditLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel
            .debit
            .drive(debitLabel.rx.text)
            .disposed(by: disposeBag)
    }
}
