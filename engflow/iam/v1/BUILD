proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":policy",
        ":role",
        ":user",
    ],
)

proto_library(
    name = "policy",
    srcs = [
        "policy.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)

proto_library(
    name = "role",
    srcs = [
        "role.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":policy",
        "@com_google_googleapis//google/api:field_behavior_proto",
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
