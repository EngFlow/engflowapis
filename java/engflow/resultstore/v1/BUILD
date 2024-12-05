load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":environment",
        ":invocation",
        ":notifications",
        ":resultstore",
    ],
)

java_rpc_library(
    name = "environment",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resultstore/v1:environment",
    ],
)

java_rpc_library(
    name = "invocation",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resultstore/v1:invocation",
    ],
)

java_rpc_library(
    name = "notifications",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resultstore/v1:notifications",
    ],
)

java_rpc_library(
    name = "resultstore",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resultstore/v1:resultstore",
    ],
)
