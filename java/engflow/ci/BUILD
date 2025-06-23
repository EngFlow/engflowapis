load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["@engflowapis//internal:license"])

java_library(
    name = "ci",
    visibility = ["//visibility:public"],
    exports = [
        "//engflow/ci/v1alpha",
    ],
)
