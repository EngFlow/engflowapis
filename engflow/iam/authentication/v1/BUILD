proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":authentication",
    ],
)

proto_library(
    name = "authentication",
    srcs = [
        "authentication.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/iam/v1:session",
        "//engflow/type:key_value_pair",
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_googleapis//google/rpc:status_proto",
    ],
)
