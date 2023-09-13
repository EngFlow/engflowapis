proto_library(
    name = "v1",
    visibility = ["//visibility:public"],
    deps = [
        ":compute",
        ":event",
    ],
)

proto_library(
    name = "compute",
    srcs = [
        "compute.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_protobuf//:duration_proto",
    ],
)

proto_library(
    name = "event",
    srcs = [
        "event.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_protobuf//:any_proto",
    ],
)
