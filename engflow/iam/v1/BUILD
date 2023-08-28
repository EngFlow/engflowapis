proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":user",
    ],
)

proto_library(
    name = "user",
    srcs = [
        "user.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

alias(
    name = "user_proto",
    actual = ":user_proto",
    deprecation = "Please depend on ':user' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
