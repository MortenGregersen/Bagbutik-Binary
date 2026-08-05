#!/bin/bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ARTIFACT_DIR="${1:-$ROOT_DIR/artifacts}"
RELEASE_TAG="${2:-24.0.0}"

MODULES=(
  BagbutikCore
  BagbutikModelsShared
  BagbutikAppStoreModels
  BagbutikAppStore
  BagbutikGameCenterModels
  BagbutikGameCenter
  BagbutikMarketplacesModels
  BagbutikMarketplaces
  BagbutikProvisioningModels
  BagbutikProvisioning
  BagbutikReportingModels
  BagbutikReporting
  BagbutikTestFlightModels
  BagbutikTestFlight
  BagbutikUsersModels
  BagbutikUsers
  BagbutikWebhooksModels
  BagbutikWebhooks
  BagbutikXcodeCloudModels
  BagbutikXcodeCloud
)

for module in "${MODULES[@]}"; do
  archive="$ARTIFACT_DIR/$module.xcframework.zip"
  if [ ! -f "$archive" ]; then
    echo "Missing archive: $archive" >&2
    exit 1
  fi

  checksum="$(swift package compute-checksum "$archive")"
  CHECKSUM="$checksum" MODULE="$module" perl -0pi -e \
    's/(binaryTarget\("\Q$ENV{MODULE}\E", checksum: ")[^"]+(")/$1$ENV{CHECKSUM}$2/' \
    "$ROOT_DIR/Package.swift"
done

RELEASE_TAG="$RELEASE_TAG" perl -0pi -e \
  's/(let releaseTag = ")[^"]+(")/$1$ENV{RELEASE_TAG}$2/' \
  "$ROOT_DIR/Package.swift"

echo "Updated checksums in $ROOT_DIR/Package.swift"
