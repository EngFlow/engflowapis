load("@io_bazel_rules_go//proto:def.bzl", "go_grpc_library", "go_proto_library")

package(default_package_metadata = ["@engflowapis//internal:license"])

go_proto_library(
    name = "v1",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
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
