load("//bazel:java_rpc_library.bzl", "java_rpc_library")
load("@rules_java//java:defs.bzl", "java_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":notification",
        ":notification_queue",
    ],
)

java_rpc_library(
    name = "notification_queue",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/notification/v1:notification_queue",
    ],
)

java_rpc_library(
    name = "notification",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/notification/v1:notification",
    ],
)
