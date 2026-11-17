// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TapErrorReportingV2",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "TapErrorReportingV2", targets: ["TapErrorReportingV2"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tap-Payments/TapAdditionsKitV2.git", from: "0.0.22"),
        .package(url: "https://github.com/Tap-Payments/TapAlertViewControllerV2.git", from: "0.0.4"),
        .package(url: "https://github.com/Tap-Payments/TapApplicationV2.git", from: "0.0.7"),
        .package(url: "https://github.com/Tap-Payments/TapBundleLocalizationV2.git", from: "0.0.4"),
        .package(url: "https://github.com/Tap-Payments/TapNetworkManagerV2.git", from: "0.0.7")
    ],
    targets: [
        .target(
            name: "TapErrorReportingV2",
            dependencies: [
                .product(name: "TapAdditionsKitV2", package: "TapAdditionsKitV2"),
                .product(name: "TapAlertViewControllerV2", package: "TapAlertViewControllerV2"),
                .product(name: "TapApplicationV2", package: "TapApplicationV2"),
                .product(name: "TapBundleLocalizationV2", package: "TapBundleLocalizationV2"),
                .product(name: "TapNetworkManagerV2", package: "TapNetworkManagerV2")
            ],
            path: "TapErrorReportingV2/TapErrorReportingV2",
            exclude: ["TapErrorReportingV2.h", "Info.plist"],
            sources: ["Source"],
            resources: [.process("Resources")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
