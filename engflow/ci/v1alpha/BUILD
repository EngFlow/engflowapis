load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

package(default_package_metadata = ["//:package_metadata"])

proto_library(
    name = "v1alpha",
    visibility = ["//visibility:public"],
    deps = [
        ":bento_revision_proto",
    ],
)

proto_library(
    name = "bento_revision",
    srcs = [
        "bento_revision.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "bento_revision_proto",
    actual = ":bento_revision",
    deprecation = "Please depend on ':bento_revision' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
