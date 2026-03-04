load("@protobuf//bazel:proto_descriptor_set.bzl", "proto_descriptor_set")
load("@protobuf//bazel:proto_library.bzl", "proto_library")

exports_files(
    [
        "LICENSE",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "engflowapis",
    visibility = ["//visibility:public"],
    deps = [
        "//engflow",
    ],
)

# Proto descriptor set for all APIs and types defined in engflowapis (including
# all transitive dependencies).
proto_descriptor_set(
    name = "proto_descriptor_set",
    visibility = ["//visibility:public"],
    deps = [
        ":engflowapis",
    ],
)

alias(
    name = "protos",
    actual = ":engflowapis",
    deprecation = "Please depend on ':engflowapis' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
