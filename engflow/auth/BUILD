proto_library(
    name = "auth",
    visibility = ["//visibility:public"],
    deps = [
        ":auth_context",
    ],
)

proto_library(
    name = "auth_context",
    srcs = [
        "auth_context.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/iam/v1:user",
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "auth_context_proto",
    actual = ":auth_context",
    deprecation = "Please depend on ':auth_context' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
