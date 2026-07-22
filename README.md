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

To integrate against `engflowapis` from your Bazel project, you must add a
dependency on the `engflowapis` module.

### `MODULE.bazel`

```bzl
bazel_dep(
    name = "engflowapis",
    version = "<version>",
)
```

This links the `engflowapis` definitions under the name `@engflowapis`.

### `BUILD`

#### `java` example

To use `EngFlow APIs` from Java, add the following dependency to your
`MODULE.bazel`:

```bzl
bazel_dep(
    name = "engflowapis_java",
    version = "<version>",
)
```

### Check out a full example

Given that protocol buffer definitions from the `engflowapis` are used,
you need to include building blocks such as `protocol buffer` tools and `googleapis` definitions.
Check out a full working [engflow example](https://github.com/EngFlow/example),
that uses the
[notification queue and event store APIs](https://github.com/EngFlow/example/tree/main/java/com/engflow/notificationqueue),
to get a better understanding on how use the API.

## Calling APIs with `grpcurl`

You can call any API in this repository directly, without generating a client, using
[`grpcurl`][grpcurl] or [`grpcui`][grpcui]. This is useful for one-off administrative calls, such
as managing custom roles or SCIM-provisioned group role assignments.

1. [Install `grpcurl`][grpcurl-install].
1. Clone this repository and build the proto descriptor set, which `grpcurl` uses in place of
   server-side reflection:

    ```bash
    git clone https://github.com/EngFlow/engflowapis && cd engflowapis
    bazel build //:proto_descriptor_set
    ```

1. Obtain credentials for your cluster: either an mTLS certificate or a JWT bearer token, both
   available from the cluster UI's *Getting Started* page (JWT requires
   [`--experimental_jwt_auth`](https://docs.engflow.com/re/config/options.html#experimental_jwt_auth)
   on the server). Authenticate with one of the following:

    - **mTLS certificate**: pass `-cert=<path-to-crt> -key=<path-to-key>`.
    - **JWT bearer token**: pass `-H "x-engflow-auth-method: jwt-v0" -H "x-engflow-auth-token: <token>"`.
      `grpcurl` uses TLS by default, so no `-cert`/`-key` flags are needed.

1. Call the RPC, replacing `example.cluster.engflow.com` with your cluster's hostname and using
   whichever auth flags apply from the previous step. The final positional argument identifies the
   RPC as `<package>.<Service>/<Method>`; for example, `engflow.iam.v1.IdentityAndAccessManagement/CreateRole`
   calls the `CreateRole` method of the `IdentityAndAccessManagement` service in the `engflow.iam.v1`
   package, defined in [`identity_and_access_management.proto`][iam-proto]. The example below
   creates a role named `alpha-user`:

    ```bash
    grpcurl \
      -d @ \
      -cert=$HOME/path/to/engflow.crt \
      -key=$HOME/path/to/engflow.key \
      -format=json \
      -protoset=bazel-bin/proto_descriptor_set.pb \
      example.cluster.engflow.com \
      engflow.iam.v1.IdentityAndAccessManagement/CreateRole \
      <<<'{"role": {"name": "alpha-user", "policy": [{"name": "all", "action": ["remoteexecution:Run"], "resource": ["engflow:platform:*:alpha:*:*"]}]}}'
    ```

### Identity and Access Management

[`identity_and_access_management.proto`][iam-proto] defines the `IdentityAndAccessManagement`
service for managing custom roles: `CreateRole`, `GetRole`, `ListRoles`, `UpdateRole`, and
`DeleteRole`.

[`group_service.proto`][group-service-proto] defines the `GroupService` service for assigning
EngFlow roles (built-in or custom) to SCIM-provisioned groups: `GetGroup`, `AssignRoles`, and
`RemoveRoles`.

[grpcurl]: https://github.com/fullstorydev/grpcurl
[grpcui]: https://github.com/fullstorydev/grpcui
[grpcurl-install]: https://github.com/fullstorydev/grpcurl?tab=readme-ov-file#installation
[iam-proto]: engflow/iam/v1/identity_and_access_management.proto
[group-service-proto]: engflow/iam/v1/group_service.proto
[engflowapis commit history]: https://github.com/EngFlow/engflowapis/commits/main
