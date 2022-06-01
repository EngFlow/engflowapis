proto_library(
    name = "protos",
    visibility = [
        "//third_party/engflowapis/engflow:__pkg__",
    ],
    deps = [
        ":build_event_proto",
        ":eventstore_proto",
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
        "//third_party/engflowapis/engflow/auth:auth_context_proto",
    ],
)
