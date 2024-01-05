proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":environment",
        ":invocation",
        ":notifications",
        ":resultstore",
    ],
)

proto_library(
    name = "environment",
    srcs = [
        "environment.proto",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "invocation",
    srcs = [
        "invocation.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":environment",
        "//engflow/type:compact_digest",
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_protobuf//:duration_proto",
        "@com_google_protobuf//:timestamp_proto",
    ],
)

alias(
    name = "invocation_proto",
    actual = ":invocation",
    deprecation = "Please depend on ':invocation' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "notifications",
    srcs = [
        "notifications.proto",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "resultstore",
    srcs = [
        "resultstore.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":invocation",
        "//engflow/api:options",
        "//engflow/type:compact_digest",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "resultstore_proto",
    actual = ":resultstore",
    deprecation = "Please depend on ':resultstore' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
