load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "v1",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/iam/v1",
    protos = [
        "@engflowapis//engflow/iam/v1:identity_and_access_management",
        "@engflowapis//engflow/iam/v1:policy",
        "@engflowapis//engflow/iam/v1:role",
        "@engflowapis//engflow/iam/v1:session",
        "@engflowapis//engflow/iam/v1:user",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api",
        "@googleapis//google/api:annotations_go_proto",
    ],
)
