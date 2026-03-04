load("@protobuf//bazel:proto_library.bzl", "proto_library")

proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":notification",
        ":notification_queue",
    ],
)

proto_library(
    name = "notification",
    srcs = [
        "notification.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@protobuf//:any_proto",
        "@protobuf//:timestamp_proto",
    ],
)

alias(
    name = "notification_proto",
    actual = ":notification",
    deprecation = "Please depend on ':notification' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "notification_queue",
    srcs = [
        "notification_queue.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":notification",
        "//engflow/api:options",
        "@com_google_googleapis//google/rpc:status_proto",
        "@protobuf//:duration_proto",
    ],
)

alias(
    name = "notification_queue_proto",
    actual = ":notification_queue",
    deprecation = "Please depend on ':notification_queue' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
