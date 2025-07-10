load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":authentication",
    ],
)

java_rpc_library(
    name = "authentication",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/authentication/v1:authentication",
    ],
)
