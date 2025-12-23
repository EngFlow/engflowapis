load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":build_event_java_rpc",
        ":eventstore_java_rpc",
        ":notifications_java_rpc",
    ],
)

java_rpc_library(
    name = "build_event_java_rpc",
    srcs = ["@engflowapis//engflow/eventstore/v1:build_event"],
    visibility = ["//visibility:public"],
    deps = [":build_event_java_proto"],
)

java_rpc_library(
    name = "eventstore_java_rpc",
    srcs = ["@engflowapis//engflow/eventstore/v1:eventstore"],
    visibility = ["//visibility:public"],
    deps = [":eventstore_java_proto"],
)

java_rpc_library(
    name = "notifications_java_rpc",
    srcs = ["@engflowapis//engflow/eventstore/v1:notifications"],
    visibility = ["//visibility:public"],
    deps = [":notifications_java_proto"],
)

java_proto_library(
    name = "build_event_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/eventstore/v1:build_event"],
)

java_proto_library(
    name = "eventstore_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/eventstore/v1:eventstore"],
)

java_proto_library(
    name = "notifications_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/eventstore/v1:notifications"],
)
