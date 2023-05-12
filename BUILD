load("@rules_apple//apple:macos.bzl", "macos_unit_test")

# NOTE: If you try and build this rule standalone it will fail, because
# Bazel will attempt to compile it for iOS by default. Including it as a
# dependency in a macos_* rule works fine.
objc_library(
    name = "MOLCertificate",
    srcs = ["Source/MOLCertificate/MOLCertificate.m"],
    hdrs = ["Source/MOLCertificate/MOLCertificate.h"],
    includes = ["Source"],
    sdk_frameworks = [
        "Foundation",
        "Security",
    ],
    visibility = ["//visibility:public"],
)

objc_library(
    name = "MOLCertificateTestsLib",
    srcs = glob(["Tests/MOLCertificateTest.m"]),
    deps = [":MOLCertificate"],
)

macos_unit_test(
    name = "MOLCertificateTests",
    minimum_os_version = "10.13",
    resources = glob([
        "Tests/*.pem",
        "Tests/*.crt",
    ]),

    deps = [":MOLCertificateTestsLib"],
)
