proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":build_event",
        ":eventstore",
        ":notifications",
    ],
)

proto_library(
    name = "build_event",
    srcs = [
        "build_event.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
        "@com_google_googleapis//google/devtools/build/v1:build_proto",
    ],
)

alias(
    name = "build_event_proto",
    actual = ":build_event",
    deprecation = "Please depend on ':build_event' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "eventstore",
    srcs = [
        "eventstore.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":build_event_proto",
        "//engflow/api:options",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "eventstore_proto",
    actual = ":eventstore",
    deprecation = "Please depend on ':eventstore' instead.",
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
    deps = [
        "//engflow/auth:auth_context",
    ],
)

alias(
    name = "notifications_proto",
    actual = ":notifications",
    deprecation = "Please depend on ':notifications' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
