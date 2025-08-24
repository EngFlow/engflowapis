load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "v1alpha",
    visibility = ["//visibility:public"],
    exports = [
        ":bento_revision",
    ],
)

java_rpc_library(
    name = "bento_revision",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/ci/v1alpha:bento_revision",
    ],
)

alias(
    name = "bento",
    actual = ":bento_revision",
    deprecation = "Please depend on ':bento_revision' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
