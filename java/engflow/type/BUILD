load("@com_google_protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")

java_library(
    name = "type",
    visibility = ["//visibility:public"],
    exports = [
        ":compact_digest",
        ":host_and_port",
        ":key_value_pair",
        ":time_interval",
        ":version",
    ],
)

java_proto_library(
    name = "compact_digest",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/type:compact_digest",
    ],
)

java_proto_library(
    name = "host_and_port",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/type:host_and_port",
    ],
)

java_proto_library(
    name = "key_value_pair",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/type:key_value_pair",
    ],
)

java_proto_library(
    name = "time_interval",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/type:time_interval",
    ],
)

java_proto_library(
    name = "version",
    visibility = ["//visibility:public"],
    deps = [
        "@engflowapis//engflow/type:version",
    ],
)
