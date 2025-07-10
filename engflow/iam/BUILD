load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

package(default_package_metadata = ["//:package_metadata"])

proto_library(
    name = "iam",
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/iam/authentication",
        "//engflow/iam/v1",
    ],
)
