proto_library(
    name = "agent_proto",
    srcs = ["agent.proto"],
    visibility = ["//visibility:public"],
    deps = ["@com_google_googleapis//google/api:field_behavior_proto"],
)

proto_library(
    name = "index_proto",
    srcs = [
        "invocation_index.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":entry_proto",
        ":invocation_proto",
        ":query_proto",
        "//engflow/type:compact_digest_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_protobuf//:timestamp_proto",
    ],
)

proto_library(
    name = "entry_proto",
    srcs = [
        "invocation_entry.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":agent_proto",
        ":invocation_proto",
        "//engflow/type:compact_digest_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_protobuf//:duration_proto",
        "@com_google_protobuf//:timestamp_proto",
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
    name = "query_proto",
    srcs = [
        "invocation_query.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":invocation_proto",
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
        "//engflow/type:compact_digest_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)
