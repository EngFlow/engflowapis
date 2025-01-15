load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "api",
    visibility = ["//visibility:public"],
    exports = [
        ":availability",
        ":launch_stage",
        ":options",
    ],
)

java_rpc_library(
    name = "availability",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/api:availability",
    ],
)

java_rpc_library(
    name = "launch_stage",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/api:launch_stage",
    ],
)

java_rpc_library(
    name = "options",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/api:options",
    ],
)
