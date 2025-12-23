load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1alpha",
    visibility = ["//visibility:public"],
    exports = [
        ":bento_revision_java_rpc",
    ],
)

java_rpc_library(
    name = "bento_revision_java_rpc",
    srcs = ["@engflowapis//engflow/ci/v1alpha:bento_revision"],
    visibility = ["//visibility:public"],
    deps = [":bento_revision_java_proto"],
)

alias(
    name = "bento",
    actual = ":bento_revision",
    deprecation = "Please depend on ':bento_revision' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

java_proto_library(
    name = "bento_revision_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/ci/v1alpha:bento_revision"],
)
