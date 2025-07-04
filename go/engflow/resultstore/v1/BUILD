load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "v1",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/resultstore/v1",
    protos = [
        "@engflowapis//engflow/resultstore/v1:environment",
        "@engflowapis//engflow/resultstore/v1:invocation",
        "@engflowapis//engflow/resultstore/v1:notifications",
        "@engflowapis//engflow/resultstore/v1:resultstore",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api",
        "@googleapis//google/api:annotations_go_proto",
    ],
)
