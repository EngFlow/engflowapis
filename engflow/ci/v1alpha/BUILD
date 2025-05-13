load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

proto_library(
    name = "v1alpha",
    visibility = ["//engflow/ci:__pkg__"],
    deps = [
        ":bento_revision_proto",
    ],
)

proto_library(
    name = "bento_revision_proto",
    srcs = [
        "bento_revision.proto",
    ],
    visibility = [
        "//java/engflow/ci/v1alpha:__pkg__",
    ],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)
