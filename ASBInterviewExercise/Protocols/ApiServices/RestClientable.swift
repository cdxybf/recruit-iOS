//
//  RestClientable.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import HTTPStatusCodes

protocol RestClientable {
    func post<T>(url: String,
                 parameter: [String: Any]?,
                 completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)
    
    func get<T>(url: String,
                parameter: [String: Any]?,
                completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)

    func put<T>(url: String,
                parameter: [String: Any]?,
                completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)

    func patch<T>(url: String,
                  parameter: [String: Any]?,
                  completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)

    func delete<T>(url: String,
                   parameter: [String: Any]?,
                   completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void)
}

struct RestResponse<T> where T: Decodable {
    let httpStatusCode: HTTPStatusCode
    let responseObject: T?
}
