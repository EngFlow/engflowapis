load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

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
    name = "compute_java_rpc",
    srcs = ["@engflowapis//engflow/resourceusage/v1:compute"],
    visibility = ["//visibility:public"],
    deps = [":compute"],
)

java_rpc_library(
    name = "event_java_rpc",
    srcs = ["@engflowapis//engflow/resourceusage/v1:event"],
    visibility = ["//visibility:public"],
    deps = [":event"],
)

java_rpc_library(
    name = "network_java_rpc",
    srcs = ["@engflowapis//engflow/resourceusage/v1:network"],
    visibility = ["//visibility:public"],
    deps = [":network"],
)

java_rpc_library(
    name = "storage_java_rpc",
    srcs = ["@engflowapis//engflow/resourceusage/v1:storage"],
    visibility = ["//visibility:public"],
    deps = [":storage"],
)

java_proto_library(
    name = "compute",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resourceusage/v1:compute"],
)

java_proto_library(
    name = "event",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resourceusage/v1:event"],
)

java_proto_library(
    name = "network",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resourceusage/v1:network"],
)

java_proto_library(
    name = "storage",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resourceusage/v1:storage"],
)
