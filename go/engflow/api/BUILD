load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

go_proto_library(
    name = "api",
    importpath = "github.com/EngFlow/engflowapis/go/engflow/api",
    protos = [
        "@engflowapis//engflow/api:availability",
        "@engflowapis//engflow/api:launch_stage",
        "@engflowapis//engflow/api:options",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type",
        "@org_golang_google_protobuf//types/descriptorpb",
    ],
)
