import "@typespec/http";
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "./common.tsp";
import "./MongoCluster.tsp";
import "./FirewallRule.tsp";
import "./PrivateEndpointConnection.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Azure.Core;
using Azure.ResourceManager;

#suppress "@azure-tools/typespec-azure-core/casing-style" "Existing resource provider namespace."
#suppress "@azure-tools/typespec-azure-resource-manager/missing-operations-endpoint" "Existing resource provider namespace."
@armProviderNamespace
@service({
  title: "MongoClusterManagementClient",
})
@versioned(Versions)
@armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v5)
@doc("The Microsoft Azure management API provides create, read, update, and delete functionality for Azure Cosmos DB for MongoDB vCore resources including clusters and firewall rules.")
namespace Microsoft.DocumentDB;

@doc("The available API versions.")
enum Versions {
  @doc("Azure Cosmos DB for Mongo vCore clusters api version 2024-03-01-preview.")
  @useDependency(Azure.ResourceManager.Versions.v1_0_Preview_1)
  @useDependency(Azure.Core.Versions.v1_0_Preview_1)
  v2024_03_01_preview: "2024-03-01-preview",
}
