# vendor_xiaomi_miuicamera-houji

Prebuilt HyperOS/MIUI Camera for custom ROM builds on Xiaomi 14 (`houji`).

## Target
- Xiaomi 14 (`houji`) only

## Blob Base
- Camera blobs are intended to be extracted from:
  `houji_eea_global_images_OS3.0.7.0.WNCEUXM_16.0` (HyperOS 3.0.7.0 EEA)

## Usage
1. Place this repo at `vendor/xiaomi/camera`.
2. Inherit it from your device product makefile:

```make
# Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)
```

## Extraction
- Source blobs from matching HyperOS build (recommended: same major base as your vendor).
- Use:

```bash
./extract-files.sh <source>
```

`<source>` can be `adb` or a local extracted partition path.
