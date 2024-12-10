load("//bazel:java_rpc_library.bzl", "java_rpc_library")
load("@rules_java//java:defs.bzl", "java_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":compute",
        ":event",
        ":network",
    ],
)

java_rpc_library(
    name = "compute",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resourceusage/v1:compute",
    ],
)

java_rpc_library(
    name = "event",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resourceusage/v1:event",
    ],
)

java_rpc_library(
    name = "network",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resourceusage/v1:network",
    ],
)

java_rpc_library(
    name = "storage",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/resourceusage/v1:storage",
    ],
)
