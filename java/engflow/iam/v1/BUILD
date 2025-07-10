load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":identity_and_access_management",
        ":policy",
        ":role",
        ":session",
        ":user",
    ],
)

java_rpc_library(
    name = "identity_and_access_management",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/v1:identity_and_access_management",
    ],
)

java_rpc_library(
    name = "policy",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/v1:policy",
    ],
)

java_rpc_library(
    name = "role",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/v1:role",
    ],
)

java_rpc_library(
    name = "user",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/v1:user",
    ],
)

java_rpc_library(
    name = "session",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/iam/v1:session",
    ],
)
