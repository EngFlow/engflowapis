load("@com_google_protobuf//bazel:proto_library.bzl", "proto_library")
load("@package_metadata//licenses/rules:license.bzl", "license")
load("@package_metadata//rules:package_metadata.bzl", "package_metadata")
load("@rules_proto//proto:defs.bzl", "proto_descriptor_set")

package(default_package_metadata = ["//:package_metadata"])

exports_files(
    [
        "LICENSE",
    ],
    visibility = ["//visibility:public"],
)

package_metadata(
    name = "package_metadata",
    attributes = [
        ":license",
    ],
    purl = "pkg:bazel/engflowapis",
    visibility = ["//visibility:public"],
)

license(
    name = "license",
    kind = "@package_metadata//licenses/spdx:Apache-2.0",
    text = "LICENSE",
)

proto_library(
    name = "engflowapis",
    visibility = ["//visibility:public"],
    deps = [
        "//engflow",
    ],
)

# Proto descriptor set for all APIs and types defined in engflowapis (including
# all transitive dependencies).
proto_descriptor_set(
    name = "proto_descriptor_set",
    visibility = ["//visibility:public"],
    deps = [
        ":engflowapis",
    ],
)

alias(
    name = "protos",
    actual = ":engflowapis",
    deprecation = "Please depend on ':engflowapis' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
