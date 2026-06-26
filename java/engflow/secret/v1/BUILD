load("@protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_visibility = ["//visibility:public"])

java_library(
    name = "v1",
    exports = [
        ":secret_java_proto",
        ":secret_java_rpc",
        ":user_secrets_java_proto",
    ],
)

java_rpc_library(
    name = "secret_java_rpc",
    srcs = ["@engflowapis//engflow/secret/v1:secret"],
    deps = [
        ":secret_java_proto",
        ":user_secrets_java_proto",
    ],
)

java_proto_library(
    name = "secret_java_proto",
    deps = ["@engflowapis//engflow/secret/v1:secret"],
)

java_proto_library(
    name = "user_secrets_java_proto",
    deps = ["@engflowapis//engflow/secret/v1:user_secrets"],
)
