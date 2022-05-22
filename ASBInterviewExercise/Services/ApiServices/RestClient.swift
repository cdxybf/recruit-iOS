//
//  RestClient.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import Alamofire
import HTTPStatusCodes

class RestClient: RestClientable {
    func post<T>(url: String,
                 parameter: [String: Any]?,
                 completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void) {
        // TODO: TBD
    }
    
    func get<T>(url: String,
                parameter: [String: Any]?,
                completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void) {
        AF.request(url,
                   method: .get,
                   parameters: parameter)
        .response { [weak self] response in
            self?.handleResponse(response: response, completion: completion)
        }
    }

    func put<T>(url: String,
                parameter: [String: Any]?,
                completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void) {
        // TODO: TBD
    }

    func patch<T>(url: String,
                  parameter: [String: Any]?,
                  completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void) {
        // TODO: TBD
    }

    func delete<T>(url: String,
                   parameter: [String: Any]?,
                   completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void) {
        // TODO: TBD
    }
    
    private func handleResponse<T>(response: AFDataResponse<Data?>,
                                   completion: @escaping (Result<RestResponse<T>, ApiServiceError>) -> Void) {
        guard response.error == nil,
              let httpStatusCode = HTTPStatusCode(HTTPResponse: response.response) else {
                  let error = ApiServiceError(errorType: .server, httpStatusCode: nil, message: response.error?.localizedDescription)
                  completion(.failure(error))
              return
        }
        
        guard httpStatusCode.isSuccess else {
            completion(.failure(ApiServiceError(errorType: .server, httpStatusCode: httpStatusCode)))
            return
        }
        
        guard let responseData = response.data else {
            completion(.success(RestResponse(httpStatusCode: httpStatusCode, responseObject: nil)))
            return
        }
        
        switch (decodeResponseData(T.self, data: responseData)) {
            case .success(let jsonObject):
                completion(.success(RestResponse(httpStatusCode: httpStatusCode, responseObject: jsonObject)))
            case .failure(let error):
                completion(.failure(ApiServiceError(errorType: .jsonDecode, httpStatusCode: httpStatusCode, message: error.localizedDescription)))
        }
    }
    
    private func decodeResponseData<T: Decodable>(_ type: T.Type,
                                                  data: Data) -> Result<T, Error> {
        do {
            let jsonDecoder = JSONDecoder()
            //jsonDecoder.dateDecodingStrategy = .iso8601
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
            jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
            let decodedObject = try jsonDecoder.decode(T.self, from: data)
            
            return .success(decodedObject)
        }  catch (let error) {
            return .failure(error)
        }
    }
}
