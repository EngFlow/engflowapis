load("@rules_go//proto:def.bzl", "go_proto_library")

package(default_visibility = ["//visibility:public"])

go_proto_library(
    name = "v1",
    compilers = [
        "@rules_go//proto:go_grpc_v2",
        "@rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/secret/v1",
    protos = ["@engflowapis//engflow/secret/v1"],
    deps = ["//engflow/type"],
)
