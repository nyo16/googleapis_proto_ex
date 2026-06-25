defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstance.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstance.State",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :PENDING_TWO_FACTOR_AUTH_REGISTRATION, 2
  field :ACTIVE, 3
  field :DISABLING, 4
  field :DISABLED, 5
  field :DELETING, 6
  field :DELETED, 7
  field :FAILED, 8
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.State",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :PENDING, 2
  field :APPROVED, 3
  field :RUNNING, 4
  field :SUCCEEDED, 5
  field :FAILED, 6
  field :DELETED, 7
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstance.QuorumAuth do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstance.QuorumAuth",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :total_approver_count, 1, type: :int32, json_name: "totalApproverCount", deprecated: false

  field :required_approver_count, 2,
    type: :int32,
    json_name: "requiredApproverCount",
    deprecated: false

  field :two_factor_public_key_pems, 3,
    repeated: true,
    type: :string,
    json_name: "twoFactorPublicKeyPems",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstance do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstance",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstance.State,
    enum: true,
    deprecated: false

  field :quorum_auth, 4,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstance.QuorumAuth,
    json_name: "quorumAuth",
    deprecated: false

  field :delete_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :unrefreshed_duration_until_disable, 6,
    type: Google.Protobuf.Duration,
    json_name: "unrefreshedDurationUntilDisable",
    deprecated: false

  field :disable_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "disableTime",
    deprecated: false

  field :key_portability_enabled, 8,
    type: :bool,
    json_name: "keyPortabilityEnabled",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.QuorumParameters do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.QuorumParameters",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :required_approver_count, 1,
    type: :int32,
    json_name: "requiredApproverCount",
    deprecated: false

  field :challenges, 2, repeated: true, type: Google.Cloud.Kms.V1.Challenge, deprecated: false

  field :approved_two_factor_public_key_pems, 3,
    repeated: true,
    type: :string,
    json_name: "approvedTwoFactorPublicKeyPems",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RequiredActionQuorumParameters do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.RequiredActionQuorumParameters",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :required_challenges, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.Challenge,
    json_name: "requiredChallenges",
    deprecated: false

  field :required_approver_count, 2,
    type: :int32,
    json_name: "requiredApproverCount",
    deprecated: false

  field :quorum_challenges, 3,
    repeated: true,
    type: Google.Cloud.Kms.V1.Challenge,
    json_name: "quorumChallenges",
    deprecated: false

  field :approved_two_factor_public_key_pems, 4,
    repeated: true,
    type: :string,
    json_name: "approvedTwoFactorPublicKeyPems",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RegisterTwoFactorAuthKeys do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.RegisterTwoFactorAuthKeys",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :required_approver_count, 1,
    type: :int32,
    json_name: "requiredApproverCount",
    deprecated: false

  field :two_factor_public_key_pems, 2,
    repeated: true,
    type: :string,
    json_name: "twoFactorPublicKeyPems",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.DisableSingleTenantHsmInstance do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.DisableSingleTenantHsmInstance",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.EnableSingleTenantHsmInstance do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.EnableSingleTenantHsmInstance",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.DeleteSingleTenantHsmInstance do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.DeleteSingleTenantHsmInstance",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.AddQuorumMember do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.AddQuorumMember",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :two_factor_public_key_pem, 1,
    type: :string,
    json_name: "twoFactorPublicKeyPem",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RemoveQuorumMember do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.RemoveQuorumMember",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :two_factor_public_key_pem, 1,
    type: :string,
    json_name: "twoFactorPublicKeyPem",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RefreshSingleTenantHsmInstance do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.kms.v1.SingleTenantHsmInstanceProposal.RefreshSingleTenantHsmInstance",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.SingleTenantHsmInstanceProposal",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :approval_parameters, 0

  oneof :expiration, 1

  oneof :operation, 2

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.State,
    enum: true,
    deprecated: false

  field :failure_reason, 4, type: :string, json_name: "failureReason", deprecated: false

  field :quorum_parameters, 5,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.QuorumParameters,
    json_name: "quorumParameters",
    oneof: 0,
    deprecated: false

  field :required_action_quorum_parameters, 14,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RequiredActionQuorumParameters,
    json_name: "requiredActionQuorumParameters",
    oneof: 0,
    deprecated: false

  field :expire_time, 6, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 1
  field :ttl, 7, type: Google.Protobuf.Duration, oneof: 1, deprecated: false

  field :delete_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :purge_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "purgeTime",
    deprecated: false

  field :register_two_factor_auth_keys, 8,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RegisterTwoFactorAuthKeys,
    json_name: "registerTwoFactorAuthKeys",
    oneof: 2

  field :disable_single_tenant_hsm_instance, 9,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.DisableSingleTenantHsmInstance,
    json_name: "disableSingleTenantHsmInstance",
    oneof: 2

  field :enable_single_tenant_hsm_instance, 10,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.EnableSingleTenantHsmInstance,
    json_name: "enableSingleTenantHsmInstance",
    oneof: 2

  field :delete_single_tenant_hsm_instance, 11,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.DeleteSingleTenantHsmInstance,
    json_name: "deleteSingleTenantHsmInstance",
    oneof: 2

  field :add_quorum_member, 12,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.AddQuorumMember,
    json_name: "addQuorumMember",
    oneof: 2

  field :remove_quorum_member, 13,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RemoveQuorumMember,
    json_name: "removeQuorumMember",
    oneof: 2

  field :refresh_single_tenant_hsm_instance, 17,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal.RefreshSingleTenantHsmInstance,
    json_name: "refreshSingleTenantHsmInstance",
    oneof: 2
end

defmodule Google.Cloud.Kms.V1.Challenge do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.Challenge",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :challenge, 1, type: :bytes, deprecated: false
  field :public_key_pem, 2, type: :string, json_name: "publicKeyPem", deprecated: false
end

defmodule Google.Cloud.Kms.V1.ChallengeReply do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ChallengeReply",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :signed_challenge, 1, type: :bytes, json_name: "signedChallenge", deprecated: false
  field :public_key_pem, 2, type: :string, json_name: "publicKeyPem", deprecated: false
end

defmodule Google.Cloud.Kms.V1.ListSingleTenantHsmInstancesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ListSingleTenantHsmInstancesRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :show_deleted, 6, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Cloud.Kms.V1.ListSingleTenantHsmInstancesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ListSingleTenantHsmInstancesResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :single_tenant_hsm_instances, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstance,
    json_name: "singleTenantHsmInstances"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Kms.V1.GetSingleTenantHsmInstanceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.GetSingleTenantHsmInstanceRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.CreateSingleTenantHsmInstanceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.CreateSingleTenantHsmInstanceRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :single_tenant_hsm_instance_id, 2,
    type: :string,
    json_name: "singleTenantHsmInstanceId",
    deprecated: false

  field :single_tenant_hsm_instance, 3,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstance,
    json_name: "singleTenantHsmInstance",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.CreateSingleTenantHsmInstanceMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.CreateSingleTenantHsmInstanceMetadata",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.CreateSingleTenantHsmInstanceProposalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.CreateSingleTenantHsmInstanceProposalRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :single_tenant_hsm_instance_proposal_id, 2,
    type: :string,
    json_name: "singleTenantHsmInstanceProposalId",
    deprecated: false

  field :single_tenant_hsm_instance_proposal, 3,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal,
    json_name: "singleTenantHsmInstanceProposal",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.CreateSingleTenantHsmInstanceProposalMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.CreateSingleTenantHsmInstanceProposalMetadata",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.GetSingleTenantHsmInstanceProposalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.GetSingleTenantHsmInstanceProposalRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalRequest.QuorumReply do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ApproveSingleTenantHsmInstanceProposalRequest.QuorumReply",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :challenge_replies, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.ChallengeReply,
    json_name: "challengeReplies",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalRequest.RequiredActionQuorumReply do
  @moduledoc false

  use Protobuf,
    full_name:
      "google.cloud.kms.v1.ApproveSingleTenantHsmInstanceProposalRequest.RequiredActionQuorumReply",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :required_challenge_replies, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.ChallengeReply,
    json_name: "requiredChallengeReplies",
    deprecated: false

  field :quorum_challenge_replies, 2,
    repeated: true,
    type: Google.Cloud.Kms.V1.ChallengeReply,
    json_name: "quorumChallengeReplies",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ApproveSingleTenantHsmInstanceProposalRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  oneof :approval_payload, 0

  field :name, 1, type: :string, deprecated: false

  field :quorum_reply, 2,
    type: Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalRequest.QuorumReply,
    json_name: "quorumReply",
    oneof: 0,
    deprecated: false

  field :required_action_quorum_reply, 3,
    type:
      Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalRequest.RequiredActionQuorumReply,
    json_name: "requiredActionQuorumReply",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ApproveSingleTenantHsmInstanceProposalResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.ExecuteSingleTenantHsmInstanceProposalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ExecuteSingleTenantHsmInstanceProposalRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.ExecuteSingleTenantHsmInstanceProposalResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ExecuteSingleTenantHsmInstanceProposalResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.ExecuteSingleTenantHsmInstanceProposalMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ExecuteSingleTenantHsmInstanceProposalMetadata",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.ListSingleTenantHsmInstanceProposalsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ListSingleTenantHsmInstanceProposalsRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :show_deleted, 6, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Cloud.Kms.V1.ListSingleTenantHsmInstanceProposalsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.ListSingleTenantHsmInstanceProposalsResponse",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :single_tenant_hsm_instance_proposals, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal,
    json_name: "singleTenantHsmInstanceProposals"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Kms.V1.DeleteSingleTenantHsmInstanceProposalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "google.cloud.kms.v1.DeleteSingleTenantHsmInstanceProposalRequest",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.HsmManagement.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.kms.v1.HsmManagement", protoc_gen_elixir_version: "0.17.0"

  rpc :ListSingleTenantHsmInstances,
      Google.Cloud.Kms.V1.ListSingleTenantHsmInstancesRequest,
      Google.Cloud.Kms.V1.ListSingleTenantHsmInstancesResponse

  rpc :GetSingleTenantHsmInstance,
      Google.Cloud.Kms.V1.GetSingleTenantHsmInstanceRequest,
      Google.Cloud.Kms.V1.SingleTenantHsmInstance

  rpc :CreateSingleTenantHsmInstance,
      Google.Cloud.Kms.V1.CreateSingleTenantHsmInstanceRequest,
      Google.Longrunning.Operation

  rpc :CreateSingleTenantHsmInstanceProposal,
      Google.Cloud.Kms.V1.CreateSingleTenantHsmInstanceProposalRequest,
      Google.Longrunning.Operation

  rpc :ApproveSingleTenantHsmInstanceProposal,
      Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalRequest,
      Google.Cloud.Kms.V1.ApproveSingleTenantHsmInstanceProposalResponse

  rpc :ExecuteSingleTenantHsmInstanceProposal,
      Google.Cloud.Kms.V1.ExecuteSingleTenantHsmInstanceProposalRequest,
      Google.Longrunning.Operation

  rpc :GetSingleTenantHsmInstanceProposal,
      Google.Cloud.Kms.V1.GetSingleTenantHsmInstanceProposalRequest,
      Google.Cloud.Kms.V1.SingleTenantHsmInstanceProposal

  rpc :ListSingleTenantHsmInstanceProposals,
      Google.Cloud.Kms.V1.ListSingleTenantHsmInstanceProposalsRequest,
      Google.Cloud.Kms.V1.ListSingleTenantHsmInstanceProposalsResponse

  rpc :DeleteSingleTenantHsmInstanceProposal,
      Google.Cloud.Kms.V1.DeleteSingleTenantHsmInstanceProposalRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Kms.V1.HsmManagement.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Kms.V1.HsmManagement.Service
end
