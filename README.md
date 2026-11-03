# AERA Recovery for Nothing Phone (2) - Pong

Unofficial AERA Recovery R1.0 (Beta) device tree for the Nothing Phone (2), codename Pong (SM8475).

## Status: Beta

Tested on LineageOS 23.2 (Android 16):

- Boots, touch, display (1080x2412, 120 Hz)
- Decryption: FBE + metadata (KeyMint)
- ADB and MTP, before and after decryption
- Backup (verified byte-identical with the partition)
- ZIP flashing, including the AERA installer zip (both recovery slots)

Not tested yet: stock Nothing OS, Format Data, Restore, USB-OTG, slot switching.

Known issues: vibration does not work.

## Build

    export AERA_BUILD_DEVICE=Pong
    source build/envsetup.sh
    lunch twrp_Pong-bp2a-eng
    mka adbd recoveryimage

## Credits

- AERA Recovery team and imqiyton
- OrangeFox Recovery and TWRP
- PitchBlack Recovery / nebrassy
- LineageOS (boot control, health and KeyMint from the LineageOS Pong build)

Maintainer: skulldreamz
