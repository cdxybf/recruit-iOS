//
//  Date+Format.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

extension Date {
    func toFormattedString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
}
