# android_device_xiaomi_dipper
For building TWRP for Xiaomi Mi MI 8

TWRP device tree for Xiaomi MI 8





Xiaomi Mi MI 8 was announced and released in June 2018.

## Device specifications

| Device       | Xiaomi Mi 8                               |
| -----------: | :---------------------------------------------- |
| SoC          | Qualcomm SDM845 Snapdragon 845                  |
| CPU          | 8x Qualcomm® Kryo™ 385 up to 2.8GHz             |
| GPU          | Adreno 630                                      |
| Memory       | 6GB / 8GM RAM (LPDDR4X)                         |
| Shipped Android version | 8.0                                  |
| Storage      | 64GB / 128GB / 256GB UFS 2.1 flash storage      |
| Battery      | Non-removable Li-Po 3400 mAh                    |
| Dimensions   | 154.9 x 74.8 x 7.6 mm                           |
| Display      | 2160 x 1080 (18:9), 6.21 inch                   |
| Rear camera 1 | 12MP, f/1.8 Dual LED flash                     |
| Rear camera 2 | 12MP, f/2.4                                    |
| Front camera | 5MP, 1-micron pixels, f/2.2 1080p 30 fps video  |

## Device picture

![Xiaomi Mi 8](https://i1.mifile.cn/f/i/2018/mi8/summary/index1.jpg)

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Now UI is very smooth (thanks to TWRP fix 16d831bee5a660f5ac6da0d8fff2b3ec4697d663)
- Vibration on touch (see https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/31021/)
- Correct screenshot color (see https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/31042/)
Finally execute these:

```
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_dipper-eng 
mka recoveryimage
```

To test it:

```
fastboot boot out/target/product/dipper/recovery.img
```
## Thanks
xiaolu

simonsmh

notsyncing

wuxianlin


