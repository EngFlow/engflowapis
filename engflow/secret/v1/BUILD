load("@protobuf//bazel:proto_library.bzl", "proto_library")

package(default_visibility = ["//visibility:public"])

proto_library(
    name = "v1",
    deps = [
        ":secret",
        ":user_secrets",
    ],
)

proto_library(
    name = "secret",
    srcs = ["secret.proto"],
)

proto_library(
    name = "user_secrets",
    srcs = ["user_secrets.proto"],
    deps = ["//engflow/type:compact_digest"],
)
