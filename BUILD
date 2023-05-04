load("@rules_proto//proto:defs.bzl", "proto_descriptor_set")

exports_files(
    [
        "LICENSE",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "protos",
    visibility = ["//visibility:public"],
    deps = [
        "//engflow:protos",
    ],
)

# Proto descriptor set for all APIs and types defined in engflowapis (including
# all transitive dependencies).
proto_descriptor_set(
    name = "proto_descriptor_set",
    visibility = ["//visibility:public"],
    deps = [
        ":protos",
    ],
)
