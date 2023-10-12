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
    sha256 = "dc3fb206a2cb3441b485eb1e423165b231235a1ea9b031b4433cf7bc1fa460dd",
    strip_prefix = "rules_proto-5.3.0-21.7",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/refs/tags/5.3.0-21.7.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/5.3.0-21.7.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()
