load("@package_metadata//licenses/rules:license.bzl", "license")
load("@package_metadata//rules:package_metadata.bzl", "package_metadata")
load("@rules_java//java:defs.bzl", "java_library")

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
    purl = "pkg:bazel/engflowapis-java",
    visibility = ["//visibility:public"],
)

license(
    name = "license",
    kind = "@package_metadata//licenses/spdx:Apache-2.0",
    text = "LICENSE",
)

java_library(
    name = "engflowapis-java",
    visibility = ["//visibility:public"],
    exports = [
        "//engflow",
    ],
)
