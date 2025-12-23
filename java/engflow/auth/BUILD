load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")

java_library(
    name = "auth",
    visibility = ["//visibility:public"],
    exports = [
        ":auth_context_java_proto",
    ],
)

java_proto_library(
    name = "auth_context_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/auth:auth_context"],
)
