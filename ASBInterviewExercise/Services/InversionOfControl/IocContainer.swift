//
//  IocContainer.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

import Foundation
import SwinjectStoryboard

let Container = IocContainer.instance

class IocContainer: IocContainerable {
    
    private let container = SwinjectStoryboard.defaultContainer
    static let instance = IocContainer()
    
    func register<P>(protocol: P.Type, factory: @escaping (IocContainerable) -> P) {
        container.register(P.self) { _ in factory(self) }
    }
    
    func resolve<P>(protocol: P.Type) -> P {
        guard let instance = container.resolve(P.self) else {
            fatalError("Ioc container cannot resolve type: \(P.self)")
        }
        return instance
    }
}

extension SwinjectStoryboard {
    // This method will be called automatically when app loads
    @objc class func setup() {
        let container = IocContainer.instance
        IocConfiguration(container: container).configure()
    }
}
