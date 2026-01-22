load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":environment",
        ":invocation",
        ":notifications",
        ":resultstore",
    ],
)

java_rpc_library(
    name = "environment_java_rpc",
    srcs = ["@engflowapis//engflow/resultstore/v1:environment"],
    visibility = ["//visibility:public"],
    deps = [":environment"],
)

java_rpc_library(
    name = "invocation_java_rpc",
    srcs = ["@engflowapis//engflow/resultstore/v1:invocation"],
    visibility = ["//visibility:public"],
    deps = [":invocation"],
)

java_rpc_library(
    name = "notifications_java_rpc",
    srcs = ["@engflowapis//engflow/resultstore/v1:notifications"],
    visibility = ["//visibility:public"],
    deps = [":notifications"],
)

java_rpc_library(
    name = "resultstore_java_rpc",
    srcs = ["@engflowapis//engflow/resultstore/v1:resultstore"],
    visibility = ["//visibility:public"],
    deps = [":resultstore"],
)

java_proto_library(
    name = "environment",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resultstore/v1:environment"],
)

java_proto_library(
    name = "invocation",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resultstore/v1:invocation"],
)

java_proto_library(
    name = "notifications",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resultstore/v1:notifications"],
)

java_proto_library(
    name = "resultstore",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/resultstore/v1:resultstore"],
)
