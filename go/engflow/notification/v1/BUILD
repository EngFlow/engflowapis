load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "v1",
    importpath = "github.com/EngFlow/engflowapis/go/engflow/notification/v1",
    protos = [
        "@engflowapis//engflow/notification/v1:notification",
        "@engflowapis//engflow/notification/v1:notification_queue",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api",
        "@googleapis//google/api:annotations_go_proto",
        "@googleapis//google/rpc:status_go_proto",
    ],
)
