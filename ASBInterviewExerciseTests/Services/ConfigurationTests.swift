//
//  ConfigurationTests.swift
//  ASBInterviewExerciseTests
//
//  Created by Rosman Cheng on 22/05/22.
//

import Foundation
import XCTest

@testable import ASBInterviewExercise

class ConfigurationTests: XCTestCase {
    func testConfiguration_serverBaseUrlReturnsExpectedValue() {
        // Arrange
        let configuration = Configuration()
        let path = Bundle.main.path(forResource: "Info", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: path!) as! [String: Any]
        let configurationDic = dic[Configuration.InfoPlistKeys.configurationKey] as! [String: Any]
        let configuredUrl = configurationDic[Configuration.InfoPlistKeys.serverBaseUrlKey] as! String
        let expectedServerBaseUrl = "\(configuration.httpProtocolPrefix)\(configuredUrl)"
        
        // Act
        let actualServerBaseUrl = configuration.serverBaseUrl
        
        // Assert
        XCTAssertEqual(actualServerBaseUrl, expectedServerBaseUrl)
    }
}
