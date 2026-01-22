load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

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
    name = "availability_java_rpc",
    srcs = ["@engflowapis//engflow/api:availability"],
    visibility = ["//visibility:public"],
    deps = [":availability"],
)

java_rpc_library(
    name = "launch_stage_java_rpc",
    srcs = ["@engflowapis//engflow/api:launch_stage"],
    visibility = ["//visibility:public"],
    deps = [":launch_stage"],
)

java_rpc_library(
    name = "options_java_rpc",
    srcs = ["@engflowapis//engflow/api:options"],
    visibility = ["//visibility:public"],
    deps = [":options"],
)

java_proto_library(
    name = "availability",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/api:availability"],
)

java_proto_library(
    name = "launch_stage",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/api:launch_stage"],
)

java_proto_library(
    name = "options",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/api:options"],
)
