load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":notification_java_rpc",
        ":notification_queue_java_rpc",
    ],
)

java_rpc_library(
    name = "notification_queue_java_rpc",
    srcs = ["@engflowapis//engflow/notification/v1:notification_queue"],
    visibility = ["//visibility:public"],
    deps = [":notification_queue_java_proto"],
)

java_rpc_library(
    name = "notification_java_rpc",
    srcs = ["@engflowapis//engflow/notification/v1:notification"],
    visibility = ["//visibility:public"],
    deps = [":notification_java_proto"],
)

java_proto_library(
    name = "notification_queue_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/notification/v1:notification_queue"],
)

java_proto_library(
    name = "notification_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/notification/v1:notification"],
)
