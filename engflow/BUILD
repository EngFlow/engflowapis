load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")

package(default_package_metadata = ["//:package_metadata"])

proto_library(
    name = "engflow",
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/api",
        "//engflow/auth",
        "//engflow/ci",
        "//engflow/cluster",
        "//engflow/eventstore",
        "//engflow/iam",
        "//engflow/notification",
        "//engflow/resourceusage",
        "//engflow/resultstore",
        "//engflow/type",
    ],
)
