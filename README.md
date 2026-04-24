# micam

HyperOS/MIUI Camera vendor package for Xiaomi 14 (`houji`) custom ROM builds.

## Base
- Source ROM blobs: `houji_eea_global_images_OS3.0.7.0.WNCEUXM_16.0` (HyperOS 3.0.7.0 EEA)

## Usage
In your device product makefile:

```make
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)
```

## Notes
- Includes MiuiCamera app, required JNI/system libs, overlays, sepolicy, and extraction scripts.
- Third-party gallery patches are included.
