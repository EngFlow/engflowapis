load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "auth",
    visibility = ["//visibility:public"],
    exports = [
        ":auth_context",
    ],
)

java_rpc_library(
    name = "auth_context",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/auth:auth_context",
    ],
)
