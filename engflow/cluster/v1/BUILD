load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":cluster",
    ],
)

proto_library(
    name = "cluster",
    srcs = [
        "cluster.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api:options",
        "//engflow/type:version",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "cluster_proto",
    actual = ":cluster",
    deprecation = "Please depend on ':cluster' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
