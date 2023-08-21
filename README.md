# EngFlow APIs

This repository contains the gRPC service definitions for public EngFlow APIs.

This repository intentionally does not provide generated code for any languages
to keep it free of clutter. In other words, it only provides
[protocol buffers](https://developers.google.com/protocol-buffers) definitions.

## Versioning

> [!IMPORTANT]
> TL;DR: Some APIs are still under active development and therefore are exempt from any
stability guarantees and SLAs we may provide to customers. When in doubt, please reach
out to us before starting to depend on an API.

This repository follows the `gRPC` convention of versioning APIs independently of other
APIs and including the version of the API in the path of the package it's defined in (e.g.,
`v1` of `EventStore` is defined in `engflow/eventstore/v1`). This allows multiple versions
of the same API to coexist and allows incremental migration to a new version of an API
while still allowing use of the old version.

However, this versioning scheme implies that APIs in this repository can be in different
stages of their lifecycle and their availability may depend on the server configuration.
Therefore, we annotate all `gRPC` `service`s and `method`s with their availability (e.g.,
EngFlow product, server version, ...) and their stability (e.g., under development, available
to selected customers as preview, available to all customers, deprecated and scheduled for
removal, ...).

## Building

Use [Bazel](https://bazel.build/) 5.x (or higher) to build the library.
Older versions of Bazel may work as well, but are not officially supported.
If you do not have Bazel installed already, we recommend installing
[bazelisk](https://github.com/bazelbuild/bazelisk),
which automatically fetches the latest stable version of Bazel by default.

To build all libraries run:

```bash
bazel build //...
```

## Using the APIs in your Bazel project

To integrate against `engflowapis` from your Bazel project, you must change your
`WORKSPACE` and `BUILD` files as follows.

This repository is designed to be consumed at HEAD. Please make yourself familiar
with our versioning policy below before starting to depend on any APIs.


### `WORKSPACE`

Include the API in your `WORKSPACE` using `http_archive` and a given commit sha
(look for the latest one at [engflowapis commit history])

```bzl
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "com_engflow_engflowapis",
    sha256 = "a04a2d2a978355c85dff8b1018d12a8e0a1e6692add9de716fd4d1b7aa1e2a0d",
    strip_prefix = "engflowapis-47aa858b498da13e7863356aaef9c6d05da0a7f2",
    urls = [
        "https://github.com/EngFlow/engflowapis/archive/47aa858b498da13e7863356aaef9c6d05da0a7f2.zip",
    ],
)
```

This links the `engflowapis` definitions under the name `com_engflow_engflowapis`.

### `BUILD`

#### `java` example

Include the API in your `BUILD` using the rules `java_proto_library`
and `java_grpc_library` from `io.grpc`. First declare the java proto library by adding as dependency
each of the required proto definitions, for instance

```bzl
load("@io_grpc_grpc_java//:java_grpc_library.bzl", "java_grpc_library")

java_proto_library(
    name = "engflowapis_java_proto",
    visibility = ["//visibility:public"],
    deps = [
        "@com_engflow_engflowapis//engflow/auth:user_proto",
        "@com_engflow_engflowapis//engflow/eventstore/v1:eventstore_proto",
        "@com_engflow_engflowapis//engflow/eventstore/v1:notifications_proto",
        "@com_engflow_engflowapis//engflow/notification/v1:notification_queue_proto",
    ],
)
```

Then add a java grpc library for each grpc service

```bzl
java_grpc_library(
    name = "notification_queue_java_grpc",
    srcs = [
        "@com_engflow_engflowapis//engflow/notification/v1:notification_queue_proto",
    ],
    deps = [
        ":engflowapis_java_proto",
    ],
)

java_grpc_library(
    name = "eventstore_java_grpc",
    srcs = [
        "@com_engflow_engflowapis//engflow/eventstore/v1:eventstore_proto",
    ],
    deps = [
        ":engflowapis_java_proto",
    ],
)
```

Finally, include all three libraries into the dependency array of your targets.

### Check out a full example

Given that protocol buffer definitions from the `engflowapis` are used,
you need to include building blocks such as `protocol buffer` tools and `googleapis` definitions.
Check out a full working [engflow example](https://github.com/EngFlow/example),
that uses the
[notification queue and event store APIs](https://github.com/EngFlow/example/tree/main/java/com/engflow/notificationqueue),
to get a better understanding on how use the API.

[engflowapis commit history]: https://github.com/EngFlow/engflowapis/commits/main
