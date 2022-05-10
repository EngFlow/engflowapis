# EngFlow APIs

This repository contains the gRPC service definitions for public EngFlow APIs.

This repository intentionally does not provide generated code for any languages
to keep it free of clutter.


## Building

Use [Bazel](https://bazel.build/) >= 5.x.

> Note: older versions of Bazel may work as well, but are not officially supported.

First, [install bazel](https://docs.bazel.build/versions/master/install.html).

To build all libraries:

```
bazel build //...
```
