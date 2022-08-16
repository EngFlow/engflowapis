# EngFlow APIs

This repository contains the gRPC service definitions for public EngFlow APIs:

- **authentication API**
- **notification queue API**
- **eventstore API**.
This repository intentionally does not provide generated code for any languages
to keep it free of clutter. In other words,  it only provides
[protocol buffers](https://developers.google.com/protocol-buffers) definitions.


## Building

Use [Bazel](https://bazel.build/) 5.x (or higher) to build the library.
Older versions of Bazel may work as well, but are not officially supported.
If you do not have Bazel installed already, we recommend installing
[bazelisk](https://github.com/bazelbuild/bazelisk),
which automatically fetches the latest stable version of Bazel by default.

To build all libraries run:

```
bazel build //...
```

## Using the APIs in your Bazel project

In order to integrate the `engflowapis` into your Bazel project, you should
include it using `http_archive`.

Alternatively, you may use a specific commit from GitHub and then store and reference
it in any storage service. To do so, you may download a zip file using a
commit sha and with the GitHub API:

```
wget "https://github.com/EngFlow/engflowapis/archive/47aa858b498da13e7863356aaef9c6d05da0a7f2.zip"
```

This will download the repository in its commit sha `47aa858b498da13e7863356aaef9c6d05da0a7f2`.
The repository may be used locally using Bazel's [local_repository](https://bazel.build/reference/be/workspace#local_repository).
However, it is recommended to store the file in a fast storage service in such a way
that you can use `http_archive` like this


```
...
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
...
http_archive(
    name = "com_engflow_engflowapis",
    sha256 = "a04a2d2a978355c85dff8b1018d12a8e0a1e6692add9de716fd4d1b7aa1e2a0d",
    strip_prefix = "engflowapis-47aa858b498da13e7863356aaef9c6d05da0a7f2",
    urls = [
        "https://storage.googleapis.com/engflow-tools-public/engflowapis-47aa858b498da13e7863356aaef9c6d05da0a7f2.zip",
        "https://github.com/EngFlow/engflowapis/archive/47aa858b498da13e7863356aaef9c6d05da0a7f2.zip",
    ],
)
```

This command will fetch a fresh copy of the repository and link it with
the name `com_engflow_engflowapis`.

### Check out a full example

You should use the protocol buffer definitions from the `engflowapis`. In here,
you need to include building blocks such as `protocol buffer` tools and `googleapis` definitions.
Check out the full working [engflow example](https://github.com/EngFlow/example), 
that uses the 
[notification queue and event store APIs](https://github.com/EngFlow/example/tree/main/java/com/engflow/notificationqueue),
to get a better understanding.
