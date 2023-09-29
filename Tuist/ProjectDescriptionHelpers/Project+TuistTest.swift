import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/


extension Project {
    public static let tuistTest = Project(
        name: "TuistTest",
        organizationName: "tuist.io",
        settings: .settings(
            base: [:],
            configurations: Configuration.tuistTestAll,
            defaultSettings: .recommended
        ),
        targets: [.tuistTest]
    )
}

extension Target {
    public static let tuistTest = Target(
        name: "TuistTest",
        platform: .iOS,
        product: .app,
        bundleId: "io.tuist.TuistTest",
        infoPlist: .extendingDefault(with: [
            "CFBundleShortVersionString": "1.0",
            "CFBundleVersion": "1",
            "UIMainStoryboardFile": "",
            "UILaunchStoryboardName": "LaunchScreen"
        ]),
        sources: [
            "Targets/TuistTest/Sources/**"
        ],
        resources: [
            "Targets/TuistTest/Resources/**"
        ],
        dependencies: [
            .external(name: "TuistTestCore"),
        ]
    )
}

extension Configuration {
    public static let tuistTestDebug = Configuration.debug(
        name: "TuistTest-debug",
        settings: [:],
        xcconfig: nil
    )
    
    public static let tuistTestRelease = Configuration.release(
        name: "TuistTest-release",
        settings: [:],
        xcconfig: nil
    )
    
    public static let tuistTestAll: [Self] = [
        tuistTestDebug,
        tuistTestRelease
    ]
}

extension Settings {
    public static func makeFrameworkSettings(configurations: [Configuration]) -> Self {
        let base: SettingsDictionary = [
            "CODE_SIGNING_REQUIRED": false,
            "CODE_SIGNING_ALLOWED": false,
            "CODE_SIGNING_IDENTITY": .string(""),
            "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES": false,
        ]
        return Settings.settings(
            base: base,
            configurations: configurations
        )
    }
}
