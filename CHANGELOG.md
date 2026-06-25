# Changelog

All notable changes to this project are documented here.

## v0.4.0

Regenerated from the latest `googleapis` definitions and modernized the
toolchain. **Minor breaking change:** consumers must move to `grpc ~> 1.0`.

### Dependencies & tooling
- `protobuf` `~> 0.15` → `~> 0.17`
- `grpc` `~> 0.11.5` → `~> 1.0`
- `ex_doc` `~> 0.39` → `~> 0.40`
- Minimum Elixir raised to `~> 1.15`

### Shared types now inherited from dependencies (no longer generated here)
This fixes duplicate-module collisions in apps that also depend on these packages:
- `Google.Protobuf.*` — provided by `:protobuf`
- `Google.Api.*`, `Google.Rpc.*`, `Google.Type.*`, `Google.Longrunning.*`,
  `Google.Bytestream.*`, `Google.Geo.*` — provided by `:googleapis`
  (pulled in transitively by `grpc`)
- Exception: the `google.api` monitoring types `:googleapis` omits
  (`MetricDescriptor`, `MonitoredResource`, `Distribution`, `LabelDescriptor`)
  are still generated locally.

Module names are unchanged, so application code referencing `Google.Rpc.Status`,
`Google.Type.*`, etc. keeps working — those types just resolve to the dependency.

### Added
- Google IAM v1 (`google.iam.v1`) — policy / `SetIamPolicy` / `GetIamPolicy` types
- Long-Running Operations (`google.longrunning`)
- Cloud Logging v2 (`google.logging`)
- Confirmed BigQuery Storage v1 coverage

### Internal
- `update-protos.sh`: prefer system `protoc` (pinned download fallback via
  `PROTOC_VERSION`), resolve `protoc-gen-elixir` past asdf/rtx shims, and flatten
  the duplicated package directories emitted by `protobuf >= 0.16`.
- `.formatter.exs`: import `:protobuf` formatter rules so generated `*.pb.ex`
  files pass `mix format --check-formatted`.
- Added smoke tests guarding against collision and coverage regressions.
