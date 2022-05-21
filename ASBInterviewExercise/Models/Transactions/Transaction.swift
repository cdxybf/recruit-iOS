//
//  Transaction.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

struct Transaction: Decodable {
    let id: Int64
    let transactionDate: Date
    let summary: String
    let debit: Double
    let credit: Double
}
