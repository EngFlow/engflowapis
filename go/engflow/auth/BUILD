load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

package(default_package_metadata = ["//:package_metadata"])

go_proto_library(
    name = "auth",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
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
