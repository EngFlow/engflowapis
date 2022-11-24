proto_library(
    name = "protos",
    visibility = [
        "//engflow:__pkg__",
    ],
    deps = [
        ":compact_digest_proto",
    ],
)

proto_library(
    name = "compact_digest_proto",
    srcs = [
        "compact_digest.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

proto_library(
    name = "time_interval_proto",
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
