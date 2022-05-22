//
//  TransactionDetailsViewController.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import UIKit
import RxSwift

class TransactionDetailsViewController: UIViewController {

    private let disposeBag = DisposeBag()
    var viewModel: TransactionsListCellViewModel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var transactionDateLabel: UILabel!
    @IBOutlet weak var creditLabel: UILabel!
    @IBOutlet weak var debitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindToViewModel()
    }

    private func bindToViewModel() {
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
