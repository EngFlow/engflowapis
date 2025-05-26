load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "v1alpha",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/ci/v1alpha",
    protos = [
        "@engflowapis//engflow/ci/v1alpha:bento_revision",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@googleapis//google/api:annotations_go_proto",
    ],
)
