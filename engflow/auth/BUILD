load("//third_party/rules_closure/closure:defs.bzl", "closure_proto_library")

proto_library(
    name = "auth_context_proto",
    srcs = [
        "auth_context.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":user_proto",
        "@com_google_googleapis//google/api:field_behavior_proto",
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
