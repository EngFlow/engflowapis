load("@rules_proto//proto:defs.bzl", "proto_descriptor_set")

exports_files(
    [
        "LICENSE",
    ],
    visibility = ["//visibility:public"],
)

# Proto descriptor set for all APIs and types defined in engflowapis (including
# all transitive dependencies).
proto_descriptor_set(
    name = "proto_descriptor_set",
    deps = [
        "//engflow:protos",
    ],
)
