proto_library(
    name = "protos",
    visibility = [
        "//engflow:__pkg__",
    ],
    deps = [
        ":notification_proto",
        ":notification_queue_proto",
    ],
)

proto_library(
    name = "notification_proto",
    srcs = [
        "notification.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_protobuf//:any_proto",
        "@com_google_protobuf//:timestamp_proto",
    ],
)

proto_library(
    name = "notification_queue_proto",
    srcs = [
        "notification_queue.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":notification_proto",
        "@com_google_googleapis//:google_rpc_status_proto",
        "@com_google_protobuf//:duration_proto",
    ],
)
