#!/bin/bash
PATCH_FILE=$1
PKG=$2
VER=$3

if [ ! -f "$PATCH_FILE" ]; then
    echo "Usage: $0 <patch_file> <package> <version>"
    exit 1
fi

# Ensure input ends with newline before counting — wc -l counts \n characters,
# not lines, so a file without a final \n is undercounted by exactly 1.
if [[ $(tail -c1 "$PATCH_FILE" | wc -l) -eq 0 ]]; then
    echo "" >> "$PATCH_FILE"
fi

NEW_PATCH="wrapped_$(basename "$PATCH_FILE")"
LINE_COUNT=$(wc -l < "$PATCH_FILE")

{
    echo "--- a/packages/${PKG}/${VER}/$(basename "$PATCH_FILE")"
    echo "+++ b/packages/${PKG}/${VER}/$(basename "$PATCH_FILE")"
    echo "@@ -0,0 +1,${LINE_COUNT} @@"
    sed 's/^/+/' "$PATCH_FILE"
    echo ""
} > "$NEW_PATCH"

echo "Created $NEW_PATCH (${LINE_COUNT} lines)"