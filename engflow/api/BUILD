proto_library(
    name = "protos",
    visibility = [
        "//engflow:__pkg__",
    ],
    deps = [
        ":availability_proto",
        ":launch_stage_proto",
        ":options_proto",
    ],
)

proto_library(
    name = "availability_proto",
    srcs = [
        "availability.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type:version_proto",
    ],
)

proto_library(
    name = "launch_stage_proto",
    srcs = [
        "launch_stage.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//engflow/type:version_proto",
    ],
)

proto_library(
    name = "options_proto",
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
