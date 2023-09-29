//
//  Dependencies.swift
//  tuist-testManifests
//
//  Created by andrew on 9/28/23.
//

import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        [.local(path: "lib")],
        productTypes: [:],
        baseSettings: .makeFrameworkSettings(configurations: Configuration.tuistTestAll),
        targetSettings: [:],
        projectOptions: [:]
    ),
    platforms: [.iOS]
)
