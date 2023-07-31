proto_library(
    name = "protos",
    visibility = [
        "//engflow/iam:__pkg__",
    ],
    deps = [
        ":user_proto",
    ],
)

proto_library(
    name = "user_proto",
    srcs = [
        "user.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)
