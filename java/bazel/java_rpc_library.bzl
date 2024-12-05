"""Open-source implementation of `java_rpc_library`."""

load("@grpc-java//:java_grpc_library.bzl", "java_grpc_library")
load("@rules_java//java:defs.bzl", "java_library", "java_proto_library")

def java_rpc_library(*, name, deps, visibility = None):
    java_proto_library(
        name = "{}.internal.proto".format(name),
        deps = deps,
        tags = [
            "manual",
        ],
        visibility = ["//visibility:private"],
    )

    java_grpc_library(
        name = "{}.internal.grpc".format(name),
        srcs = deps,
        deps = [
            "{}.internal.proto".format(name),
        ],
        tags = [
            "manual",
        ],
        visibility = ["//visibility:private"],
    )
    java_library(
        name = name,
        exports = [
            "{}.internal.proto".format(name),
            "{}.internal.grpc".format(name),
        ],
        visibility = visibility,
    )
