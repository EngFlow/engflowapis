load("@protobuf//bazel:proto_library.bzl", "proto_library")

package(default_visibility = ["//visibility:public"])

proto_library(
    name = "v1",
    deps = [":secret"],
)

proto_library(
    name = "secret",
    srcs = ["secret.proto"],
)
