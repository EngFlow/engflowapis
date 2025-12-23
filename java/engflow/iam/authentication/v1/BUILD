load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":authentication_java_rpc",
    ],
)

java_rpc_library(
    name = "authentication_java_rpc",
    srcs = ["@engflowapis//engflow/iam/authentication/v1:authentication"],
    visibility = ["//visibility:public"],
    deps = [":authentication_java_proto"],
)

java_proto_library(
    name = "authentication_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/authentication/v1:authentication"],
)
