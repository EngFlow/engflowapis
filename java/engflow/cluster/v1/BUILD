load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["@engflowapis//internal:license"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":cluster",
    ],
)

java_rpc_library(
    name = "cluster",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/cluster/v1:cluster",
    ],
)
