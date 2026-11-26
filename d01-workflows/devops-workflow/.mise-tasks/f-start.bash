#!/usr/bin/env bash
#MISE description="🍿 Start Floci (Local AWS)"
#MISE quiet=true

floci start --persist "$FLOCI_STORAGE_PERSISTENT_PATH"
