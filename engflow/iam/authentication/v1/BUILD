load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

package(default_package_metadata = ["//:package_metadata"])

proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":authentication",
    ],
)

proto_library(
    name = "authentication",
    srcs = [
        "authentication.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/iam/v1:session",
        "//engflow/type:key_value_pair",
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_googleapis//google/rpc:status_proto",
    ],
)
