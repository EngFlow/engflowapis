proto_library(
    name = "protos",
    visibility = [
        "//engflow:__pkg__",
    ],
    deps = [
        ":agent_proto",
        ":invocation_proto",
        ":resultstore_proto",
    ],
)

proto_library(
    name = "agent_proto",
    srcs = [
        "agent.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

proto_library(
    name = "invocation_proto",
    srcs = [
        "invocation.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":agent_proto",
        "//engflow/type:compact_digest_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_protobuf//:duration_proto",
        "@com_google_protobuf//:timestamp_proto",
    ],
)

proto_library(
    name = "resultstore_proto",
    srcs = [
        "resultstore.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":invocation_proto",
        "//engflow/api:options_proto",
        "//engflow/type:compact_digest_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)
