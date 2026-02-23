"""Open-source implementation of `java_rpc_library`."""

load("@grpc-java//:java_grpc_library.bzl", "java_grpc_library")
load("@rules_java//java:defs.bzl", "java_library")

def java_rpc_library(*, name, srcs, deps, visibility = None):
    java_grpc_library(
        name = "{}.internal.grpc".format(name),
        srcs = srcs,
        deps = deps,
        tags = [
            "manual",
        ],
        visibility = ["//visibility:private"],
    )
    java_library(
        name = name,
        exports = [
            "{}.internal.grpc".format(name),
        ] + deps,
        visibility = visibility,
    )
