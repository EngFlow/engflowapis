load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "auth",
    importpath = "github.com/EngFlow/engflowapis/go/engflow/auth",
    protos = [
        "@engflowapis//engflow/auth:auth_context",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/iam/v1",
        "@googleapis//google/api:annotations_go_proto",
    ],
)
