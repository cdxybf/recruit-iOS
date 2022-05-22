//
//  IocContainerable.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

protocol IocContainerable {
    func register<P>(protocol: P.Type, factory: @escaping (_ container: IocContainerable) -> P)
    func resolve<P>(protocol: P.Type) -> P
}
