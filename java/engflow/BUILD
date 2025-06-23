load("@rules_java//java:defs.bzl", "java_library")
load("//bazel:java_rpc_library.bzl", "java_rpc_library")

package(default_package_metadata = ["@engflowapis//internal:license"])

java_library(
    name = "engflow",
    visibility = ["//visibility:public"],
    exports = [
        "//engflow/api",
        "//engflow/auth",
        "//engflow/cluster",
        "//engflow/eventstore",
        "//engflow/iam",
        "//engflow/notification",
        "//engflow/resourceusage",
        "//engflow/resultstore",
        "//engflow/type",
    ],
)
