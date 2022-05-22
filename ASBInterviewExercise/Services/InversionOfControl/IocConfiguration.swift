//
//  IocConfiguration.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

class IocConfiguration {
    
    private var container: IocContainerable!
    
    init(container: IocContainerable) {
        self.container = container
    }
    
    func configure() {
        
        let configuration = Configuration()
        let restClient = RestClient()

        container.register(protocol: IocContainerable.self) { _ in Container }
        container.register(protocol: ConfigurationCollection.self) { _ in configuration }
        container.register(protocol: RestClientable.self) { _ in restClient }
        container.register(protocol: TransactionsServiceable.self) { _ in TransactionsService(restClient: restClient, configuration: configuration) }
    }
}
