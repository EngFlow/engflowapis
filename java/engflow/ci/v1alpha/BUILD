load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1alpha",
    visibility = ["//visibility:public"],
    exports = [
        ":bento",
    ],
)

java_rpc_library(
    name = "bento",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/ci/v1alpha:bento_revision_proto",
    ],
)
