//
//  Configuration.swift
//  ASBInterviewExercise
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation

class Configuration: ConfigurationCollection {
    
    let httpProtocolPrefix = "https://"
    
    init() {
        guard let configurationDictionary = getPlistConfigurationsDictionary() else {
            fatalError("cannot read configurations from Info.plist file")
        }
        
        let configuredUrl: String = getConfigurationWithKey(dictionary: configurationDictionary, key: InfoPlistKeys.serverBaseUrlKey)
        serverBaseUrl = "\(httpProtocolPrefix)\(configuredUrl)"
    }
    
    var serverBaseUrl: String = ""
    
    private func getPlistConfigurationsDictionary() -> [String: Any]? {
        guard let plistFilePath = Bundle.main.path(forResource: "Info", ofType: "plist") else {
            return nil
        }
        
        guard let plistDictionary = NSDictionary.init(contentsOfFile: plistFilePath) as? [String: Any] else {
            return nil
        }
        
        guard let configurationDictionary = plistDictionary[InfoPlistKeys.configurationKey] as? [String: Any] else {
            return nil
        }
        
        return configurationDictionary
    }
    
    private func getConfigurationWithKey<T>(dictionary: [String: Any], key: String) -> T {
        guard let configuration = dictionary[key] as? T else {
            fatalError("The given key: \(key) does not exist in Info.plist")
        }
        
        return configuration
    }
    
    struct InfoPlistKeys {
        static let configurationKey = "Configurations"
        static let serverBaseUrlKey = "SERVER_BASE_URL"
    }
}
