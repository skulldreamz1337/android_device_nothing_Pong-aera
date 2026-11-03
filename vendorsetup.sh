#!/bin/bash
# Select the device before sourcing envsetup:
#   export AERA_BUILD_DEVICE=Pong; source build/envsetup.sh
case "${AERA_BUILD_DEVICE:-${TARGET_PRODUCT:-${1:-}}}" in
    Pong|twrp_Pong|twrp_Pong-*)
        # Keep packaging labels consistent with the compiled recovery flags.
        export AERA_BUILD_TYPE=Beta
        ;;
esac
