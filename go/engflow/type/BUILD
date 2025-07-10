load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

package(default_package_metadata = ["//:package_metadata"])

go_proto_library(
    name = "type",
    compilers = [
        "@io_bazel_rules_go//proto:go_grpc_v2",
        "@io_bazel_rules_go//proto:go_proto",
    ],
    importpath = "github.com/EngFlow/engflowapis/go/engflow/type",
    protos = [
        "@engflowapis//engflow/type:compact_digest",
        "@engflowapis//engflow/type:host_and_port",
        "@engflowapis//engflow/type:key_value_pair",
        "@engflowapis//engflow/type:time_interval",
        "@engflowapis//engflow/type:version",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@googleapis//google/api:annotations_go_proto",
        "@org_golang_google_protobuf//types/known/durationpb",
        "@org_golang_google_protobuf//types/known/timestamppb",
    ],
)
