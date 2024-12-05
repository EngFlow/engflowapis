load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":authentication",
    ],
)

java_rpc_library(
    name = "authentication",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/authentication/v1:authentication",
    ],
)
