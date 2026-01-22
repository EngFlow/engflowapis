load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

package(default_package_metadata = ["//:package_metadata"])

proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":identity_and_access_management",
        ":policy",
        ":role",
        ":session",
        ":user",
    ],
)

proto_library(
    name = "identity_and_access_management",
    srcs = [
        "identity_and_access_management.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":role",
        "//engflow/api:options",
        "@com_google_googleapis//google/api:field_behavior_proto",
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
    actual = ":user",
    deprecation = "Please depend on ':user' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "session",
    srcs = [
        "session.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_googleapis//google/api:field_behavior_proto",
    ],
)
