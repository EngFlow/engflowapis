workspace(name = "com_engflow_engflowapis")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_googleapis",
    sha256 = "25bba87daac3f4f7b9f5cd4632ade645de0d41d9600feccfbe6cbdf0cc8f6ae6",
    strip_prefix = "googleapis-4f46ddcc9349121b27331e5cb5d18c553696a6c3",
    urls = [
        "https://storage.googleapis.com/engflow-tools-public/googleapis-4f46ddcc9349121b27331e5cb5d18c553696a6c3.tar.gz",
        "https://github.com/googleapis/googleapis/archive/4f46ddcc9349121b27331e5cb5d18c553696a6c3.tar.gz",
    ],
)

load("@com_google_googleapis//:repository_rules.bzl", "switched_rules_by_language")

switched_rules_by_language(
    name = "com_google_googleapis_imports",
)

http_archive(
    name = "rules_proto",
    sha256 = "66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1",
    strip_prefix = "rules_proto-4.0.0",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()
