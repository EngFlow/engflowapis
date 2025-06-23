load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["@engflowapis//internal:license"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":build_event",
        ":eventstore",
        ":notifications",
    ],
)

java_rpc_library(
    name = "build_event",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/eventstore/v1:build_event",
    ],
)

java_rpc_library(
    name = "eventstore",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/eventstore/v1:eventstore",
    ],
)

java_rpc_library(
    name = "notifications",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/eventstore/v1:notifications",
    ],
)
