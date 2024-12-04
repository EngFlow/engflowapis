load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":compute",
        ":event",
        ":network",
        ":storage",
    ],
)

proto_library(
    name = "compute",
    srcs = [
        "compute.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_protobuf//:duration_proto",
    ],
)

proto_library(
    name = "event",
    srcs = [
        "event.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type:key_value_pair",
        "@com_google_protobuf//:any_proto",
        "@com_google_protobuf//:timestamp_proto",
    ],
)

proto_library(
    name = "network",
    srcs = [
        "network.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type:key_value_pair",
    ],
)

proto_library(
    name = "storage",
    srcs = [
        "storage.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_protobuf//:duration_proto",
    ],
)
