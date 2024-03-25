//
//  MainSceneCoordinator.swift
//  SparklePlayground
//
//  Created by Michal on 25/03/2024.
//

import Foundation

final class MainSceneCoordinator: ObservableObject {
    var buildNumber: String {
        Bundle.main.buildNumber ?? ""
    }
    
    var versionNumber: String {
        Bundle.main.versionNumber ?? ""
    }
}

private extension Bundle {
    var buildNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
    var versionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
