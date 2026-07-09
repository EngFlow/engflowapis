load("@protobuf//bazel:java_proto_library.bzl", "java_proto_library")
load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

java_library(
    name = "v1",
    visibility = ["//visibility:public"],
    exports = [
        ":group_java_proto",
        ":group_service_java_rpc",
        ":identity_and_access_management_java_rpc",
        ":policy_java_proto",
        ":role_java_proto",
        ":session_java_proto",
        ":user_java_proto",
    ],
)

java_rpc_library(
    name = "identity_and_access_management_java_rpc",
    srcs = ["@engflowapis//engflow/iam/v1:identity_and_access_management"],
    visibility = ["//visibility:public"],
    deps = [":identity_and_access_management_java_proto"],
)

java_proto_library(
    name = "identity_and_access_management_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:identity_and_access_management"],
)

java_rpc_library(
    name = "group_service_java_rpc",
    srcs = ["@engflowapis//engflow/iam/v1:group_service"],
    visibility = ["//visibility:public"],
    deps = [":group_service_java_proto"],
)

java_proto_library(
    name = "group_service_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:group_service"],
)

java_proto_library(
    name = "group_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:group"],
)

java_proto_library(
    name = "policy_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:policy"],
)

java_proto_library(
    name = "role_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:role"],
)

java_proto_library(
    name = "user_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:user"],
)

java_proto_library(
    name = "session_java_proto",
    visibility = ["//visibility:public"],
    deps = ["@engflowapis//engflow/iam/v1:session"],
)
