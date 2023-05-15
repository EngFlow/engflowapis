proto_library(
    name = "protos",
    visibility = [
        "//engflow:__pkg__",
    ],
    deps = [
        ":cluster_proto",
    ],
)

proto_library(
    name = "cluster_proto",
    srcs = [
        "cluster.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api:options_proto",
        "//engflow/type:version_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)
