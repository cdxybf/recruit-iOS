//
//  ApiServiceError.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import HTTPStatusCodes

class ApiServiceError: Error {
    init(errorType: ErrorType, httpStatusCode: HTTPStatusCode? = nil, message: String? = nil) {
        self.errorType = errorType
        self.httpStatusCode = httpStatusCode
        self.message = message
    }
    
    let errorType: ErrorType
    let httpStatusCode: HTTPStatusCode?
    let message: String?
    
    var errorDescription: String? {
        get {
            return message ?? errorType.description
        }
    }
    
    enum ErrorType: String {
        case invalidParameter
        case jsonDecode
        case server
        case unknown
        
        var description: String {
            return self.rawValue
        }
    }
}
