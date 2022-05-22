//
//  ViewController.swift
//  ASBInterviewExercise
//
//  Created by ASB on 29/07/21.
//

import UIKit
import RxSwift

class TransactionsListViewController: UIViewController {

    private let viewModel = TransactionsListViewModel()
    private let disposeBag = DisposeBag()
    
    @IBOutlet weak var transactionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
        viewModel.loadTransactions()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigateToTransactionDetails" {
            if let destination = segue.destination as? TransactionDetailsViewController,
                let cell = sender as? TransactionsListTableViewCell {
                destination.viewModel = cell.viewModel
             }
        }
    }
    
    private func bindViewModel() {
        viewModel
            .transactionsViewModel
            .bind(to: transactionsTableView.rx.items(cellIdentifier: "transactionCellIdentifier", cellType: TransactionsListTableViewCell.self)) { _, cellViewModel, cell in
                cell.bindToViewModel(viewModel: cellViewModel)
            }
            .disposed(by: disposeBag)
    }
}

