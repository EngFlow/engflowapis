load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":cluster",
    ],
)

java_rpc_library(
    name = "cluster_java_rpc",
    srcs = ["@engflowapis//engflow/cluster/v1:cluster"],
    visibility = ["//visibility:public"],
    deps = [":cluster"],
)

java_proto_library(
    name = "cluster",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/cluster/v1:cluster"],
)
