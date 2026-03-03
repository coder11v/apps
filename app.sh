#!/bin/bash

APP="/Applications/Team5171.app"

echo "Fixing $APP"

sudo xattr -dr com.apple.quarantine "$APP"
sudo xattr -cr "$APP"
sudo codesign --force --deep --sign - "$APP"

echo ""
spctl -a -vv "$APP"
echo "Done."