#!/bin/bash
# wrap_patch.sh <patch_file> <target_package> <version>

PATCH_FILE=$1
PKG=$2      # e.g., uClibc-ng
VER=$3      # e.g., 1.0.57

if [ ! -f "$PATCH_FILE" ]; then
    echo "Usage: $0 <patch_file> <package> <version>"
    exit 1
fi

NEW_PATCH="wrapped_$(basename "$PATCH_FILE")"

echo "--- a/packages/${PKG}/${VER}/$(basename "$PATCH_FILE")" > "$NEW_PATCH"
echo "+++ b/packages/${PKG}/${VER}/$(basename "$PATCH_FILE")" >> "$NEW_PATCH"
echo "@@ -0,0 +$(wc -l < "$PATCH_FILE") @@" >> "$NEW_PATCH"
sed 's/^/+/ ' "$PATCH_FILE" >> "$NEW_PATCH"

echo "Created $NEW_PATCH"