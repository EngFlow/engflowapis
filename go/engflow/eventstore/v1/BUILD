load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "v1",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/eventstore/v1",
    protos = [
        "@engflowapis//engflow/eventstore/v1:build_event",
        "@engflowapis//engflow/eventstore/v1:eventstore",
        "@engflowapis//engflow/eventstore/v1:notifications",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api",
        "//engflow/auth",
        "@googleapis//google/api:annotations_go_proto",
        "@googleapis//google/devtools/build/v1:build_go_proto",
    ],
)
