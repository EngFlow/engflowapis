proto_library(
    name = "protos",
    visibility = [
        "//engflow:__pkg__",
    ],
    deps = [
        ":build_event_proto",
        ":eventstore_proto",
        ":notifications_proto",
    ],
)

proto_library(
    name = "build_event_proto",
    srcs = [
        "build_event.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_googleapis//google/devtools/build/v1:build_proto",
    ],
)

proto_library(
    name = "eventstore_proto",
    srcs = [
        "eventstore.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":build_event_proto",
        "//engflow/api:options_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

proto_library(
    name = "notifications_proto",
    srcs = [
        "notifications.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/auth:auth_context_proto",
    ],
)
