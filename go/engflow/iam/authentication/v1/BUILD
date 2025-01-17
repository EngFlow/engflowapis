load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "v1",
    importpath = "github.com/EngFlow/engflowapis/go/engflow/iam/authentication/v1",
    protos = [
        "@engflowapis//engflow/iam/authentication/v1:authentication",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/iam/v1",
        "//engflow/type",
        "@googleapis//google/api:annotations_go_proto",
        "@googleapis//google/rpc:status_go_proto",
    ],
)
