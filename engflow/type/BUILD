load("//lang/rpc:defs.bzl", "ts_rpc_library")

proto_library(
    name = "type",
    visibility = ["//visibility:public"],
    deps = [
        ":compact_digest",
        ":host_and_port",
        ":key_value_pair",
        ":time_interval",
        ":version",
    ],
)

proto_library(
    name = "compact_digest",
    srcs = [
        "compact_digest.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

ts_rpc_library(
    name = "compact_digest_ts_proto",
    proto = ":compact_digest",
    visibility = ["//visibility:public"],
)

alias(
    name = "compact_digest_proto",
    actual = ":compact_digest",
    deprecation = "Please depend on ':compact_digest' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "host_and_port",
    srcs = [
        "host_and_port.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

proto_library(
    name = "key_value_pair",
    srcs = [
        "key_value_pair.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "key_value_pair_proto",
    actual = ":key_value_pair",
    deprecation = "Please depend on ':key_value_pair' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "time_interval",
    srcs = [
        "time_interval.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_protobuf//:duration_proto",
        "@com_google_protobuf//:timestamp_proto",
    ],
)

alias(
    name = "time_interval_proto",
    actual = ":time_interval",
    deprecation = "Please depend on ':time_interval' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "version",
    srcs = [
        "version.proto",
    ],
    visibility = ["//visibility:public"],
)

alias(
    name = "version_proto",
    actual = ":version",
    deprecation = "Please depend on ':version' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
