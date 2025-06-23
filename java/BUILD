load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["@engflowapis//internal:license"])

exports_files(
    [
        "LICENSE",
    ],
    visibility = ["//visibility:public"],
)

java_library(
    name = "engflowapis-java",
    visibility = ["//visibility:public"],
    exports = [
        "//engflow",
    ],
)
