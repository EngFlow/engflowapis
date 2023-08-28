proto_library(
    name = "api",
    visibility = ["//visibility:public"],
    deps = [
        ":availability",
        ":launch_stage",
        ":options",
    ],
)

proto_library(
    name = "availability",
    srcs = [
        "availability.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type:version",
    ],
)

alias(
    name = "availability_proto",
    actual = ":availability",
    deprecation = "Please depend on ':availability' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "launch_stage",
    srcs = [
        "launch_stage.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type:version",
    ],
)

alias(
    name = "launch_stage_proto",
    actual = ":launch_stage",
    deprecation = "Please depend on ':launch_stage' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)

proto_library(
    name = "options",
    srcs = [
        "options.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":availability_proto",
        ":launch_stage_proto",
        "@com_google_protobuf//:descriptor_proto",
    ],
)

alias(
    name = "options_proto",
    actual = ":options",
    deprecation = "Please depend on ':options' instead.",
    tags = [
        "manual",
    ],
    visibility = ["//visibility:public"],
)
