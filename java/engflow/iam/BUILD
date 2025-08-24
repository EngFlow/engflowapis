load("@rules_java//java:defs.bzl", "java_library")

package(default_package_metadata = ["//:package_metadata"])

java_library(
    name = "iam",
    visibility = ["//visibility:public"],
    exports = [
        "//engflow/iam/authentication",
        "//engflow/iam/v1",
    ],
)
