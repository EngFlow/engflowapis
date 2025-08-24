load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

package(default_package_metadata = ["//:package_metadata"])

go_proto_library(
    name = "v1",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/cluster/v1",
    protos = [
        "@engflowapis//engflow/cluster/v1:cluster",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api",
        "//engflow/type",
        "@googleapis//google/api:annotations_go_proto",
    ],
)
