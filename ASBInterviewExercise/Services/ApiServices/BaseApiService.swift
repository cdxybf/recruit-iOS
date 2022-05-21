//
//  BaseApiService.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

class BaseApiService {
    let restClient: RestClientable
    let configuration: ConfigurationCollection
    
    init(restClient: RestClientable, configuration: ConfigurationCollection) {
        self.restClient = restClient
        self.configuration = configuration
    }
}
