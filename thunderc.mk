DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay/common device/lge/thunderc/overlay/$(SUB_MODEL)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderc/files/kernel/$(SUB_MODEL)/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    gps.thunderc \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    bdaddr_read \
    flash_image \
    dump_image \
    erase_image \
    e2fsck \
    SpareParts \
    CMWallpapers \
    LiveWallpapersPicker \

DISABLE_DEXPREOPT := false

# Backlight
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/hw/lights.thunderc.so:system/lib/hw/lights.thunderc.so \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/usr/keylayout/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/usr/keychars/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \

# Board-specific init (does not support charging in "power off" state yet)
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/init.thunderc.rc:root/init.thunderc.rc \
    device/lge/thunderc/files/ueventd.thunderc.rc:root/ueventd.thunder.rc \
    device/lge/thunderc/files/init.qcom.rc:root/init.qcom.thunderc.rc \
    device/lge/thunderc/files/initlogo.rle:root/initlogo.rle \
    device/lge/thunderc/files/chargerlogo:root/chargerlogo \
    device/lge/thunderc/files/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/thunderc/files/chargerimages/battery_notenough.rle:root/chargerimages/battery_notenough.rle \
    device/lge/thunderc/files/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    device/lge/thunderc/files/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    device/lge/thunderc/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/thunderc/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
    device/lge/thunderc/files/bin/battery_charging:system/bin/battery_charging



# 2D (using proprietary because of poor performance of open source libs)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/hw/gralloc.thunderc.so:system/lib/hw/gralloc.thunderc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/hw/copybit.thunderc.so:system/lib/hw/copybit.thunderc.so \

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/hw/sensors.thunderc.so:system/lib/hw/sensors.thunderc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/bin/ami304d:system/bin/ami304d \

# GPS
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libloc_api.so:system/lib/libloc_api.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libgps.so:system/lib/libgps.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libloc.so:system/lib/libloc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libloc.so:obj/lib/libloc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libloc-rpc.so:system/lib/libloc-rpc.so 


# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so 

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/kernel/$(SUB_MODEL)/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/thunderc/files/kernel/$(SUB_MODEL)/tun.ko:system/lib/modules/tun.ko \
    device/lge/thunderc/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/thunderc/files/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/lge/thunderc/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt 

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml 

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/bin/qmuxd:system/bin/qmuxd \

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libril.so:system/lib/libril.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/bin/rild:system/bin/rild \

# OMX
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \

# CND
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/bin/cnd:system/bin/cnd

# Kernel modules
# PRODUCT_COPY_FILES += \
#    device/lge/thunderc/files/kernel/$(SUB_MODEL)/ext2.ko:system/lib/modules/ext2.ko \
#    device/lge/thunderc/files/kernel/$(SUB_MODEL)/ext4.ko:system/lib/modules/ext4.ko \
#    device/lge/thunderc/files/kernel/$(SUB_MODEL)/mbcache.ko:system/lib/modules/mbcache.ko \

PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/thunderc/files/etc/init.d/mvdalvik.sh:system/etc/init.d/01mvdalvik \

# Boot
PRODUCT_COPY_FILES += \
     device/lge/thunderc/files/bin/bootsound/:system/bin/bootsound \
     device/lge/thunderc/files/media/audio/ui/android_audio.mp3:system/media/audio/ui/android_audio.mp3 \
     device/lge/thunderc/files/media/bootanimation.zip:system/media/bootanimation.zip \
     device/lge/thunderc/files/etc/init.local.rc:/system/etc/init.local.rc 

# Apps
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/apps/RoverCyan.apk:system/app/RoverCyan.apk \
    device/lge/thunderc/files/apps/com.mike.theme.hc3d3d-1.apk:system/app/com.mike.theme.hc3d3d-1.apk \
    device/lge/thunderc/files/apps/DarkADBWireless-v1.apk:system/app/DarkADBWireless-v1.apk \
    device/lge/thunderc/files/apps/com.elgubbo.a2sdGUI-1.apk:system/app/com.elgubbo.a2sdGUI-1.apk 

## Dark Tremors apps2sd
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/apps2sd_files/data/dtinstall.launch:data/dtinstall.launch \
    device/lge/thunderc/files/apps2sd_files/data/jit/bin/dalvikvm:data/jit/bin/dalvikvm \
    device/lge/thunderc/files/apps2sd_files/data/jit/lib/libdvm.so:data/jit/lib/libdvm.so \
    device/lge/thunderc/files/apps2sd_files/data/jit/lib/libnativehelper.so:data/jit/lib/libnativehelper.so \
    device/lge/thunderc/files/apps2sd_files/system/bin/a2sd:system/bin/a2sd \
    device/lge/thunderc/files/apps2sd_files/system/bin/apps2sd.hlp:system/bin/apps2sd.hlp \
    device/lge/thunderc/files/apps2sd_files/system/bin/bash:system/bin/bash \
    device/lge/thunderc/files/apps2sd_files/system/bin/busybox.a2sd:system/bin/busybox.a2sd \
    device/lge/thunderc/files/apps2sd_files/system/bin/chka2sd:system/bin/chka2sd \
    device/lge/thunderc/files/apps2sd_files/system/bin/dtinstall:system/bin/dtinstall \
    device/lge/thunderc/files/apps2sd_files/system/bin/jita2sd:system/bin/jita2sd \
    device/lge/thunderc/files/apps2sd_files/system/bin/launcha2sd:system/bin/launcha2sd \
    device/lge/thunderc/files/apps2sd_files/system/bin/starta2sd:system/bin/starta2sd \
    device/lge/thunderc/files/apps2sd_files/system/bin/sysinit:system/bin/sysinit \
    device/lge/thunderc/files/apps2sd_files/system/bin/zipalign:system/bin/zipalign \
    device/lge/thunderc/files/apps2sd_files/system/etc/init.d/00banner:system/etc/init.d/00banner \
    device/lge/thunderc/files/apps2sd_files/system/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    device/lge/thunderc/files/apps2sd_files/system/etc/init.d/02firstboot:system/etc/init.d/02firstboot \
    device/lge/thunderc/files/apps2sd_files/system/etc/init.d/04apps2sd:system/etc/init.d/01apps2sd \
    device/lge/thunderc/files/apps2sd_files/system/etc/init.d/99complete:system/etc/init.d/99complete \
    device/lge/thunderc/files/apps2sd_files/system/sd/placeholder:system/sd/placeholder \
    device/lge/thunderc/files/apps2sd_files/system/xbin/a2sd:system/xbin/a2sd \
    device/lge/thunderc/files/apps2sd_files/system/xbin/apps2sd:system/xbin/apps2sd \
    device/lge/thunderc/files/apps2sd_files/move_cache_sd:root/move_cache_sd \
    device/lge/thunderc/files/apps2sd_files/apps2sd_run_program:root/apps2sd_run_program \
    device/lge/thunderc/files/apps2sd_files/apps2sd_system:root/apps2sd_system

ifeq ($(SUB_MODEL),LW690)
# Cricket MMS fix
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/xbin/$(SUB_MODEL)/sqlite3:system/xbin/sqlite3 \
    device/lge/thunderc/files/apps/$(SUB_MODEL)/Mms.apk:system/app/Mms.apk 
endif

ifeq ($(SUB_MODEL),MS690)
# MetroPCS MMS fix
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/xbin/$(SUB_MODEL)/sqlite3:system/xbin/sqlite3 \
    device/lge/thunderc/files/apps/$(SUB_MODEL)/Mms.apk:system/app/Mms.apk
endif

# Let's use our own GPS config file
PRODUCT_COPY_FILES += device/lge/thunderc/files/etc/gps.conf:system/etc/gps.conf 

$(call inherit-product, build/target/product/full.mk)

# We don't need to pull in the languages_full.mk manually because it'll get clobbered anyhow by full.mk
# mdpi goes last so that the janky default locale/region code can pick a sane default
PRODUCT_LOCALES += mdpi

PRODUCT_NAME := full_thunderc
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc
PRODUCT_MANUFACTURER := LGE

ifeq ($(SUB_MODEL),VS660)
    # We're on Verizon (TODO)
    CDMA_GOOGLE_BASE := android-verizon
    CDMA_CARRIER_ALPHA := Verizon_Wireless
    CDMA_CARRIER_NUMERIC := 310012
endif

ifeq ($(SUB_MODEL),LS670)
    # We're on Sprint
    CDMA_GOOGLE_BASE := android-sprint-us
    CDMA_CARRIER_ALPHA := Sprint
    CDMA_CARRIER_NUMERIC := 310120
    BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0218.0248.hcd
endif

ifeq ($(SUB_MODEL),VM670)
    # We're on Sprint (well, Virgin Mobile)
    # http://en.wikipedia.org/wiki/Mobile_Network_Code
    # Set this properly so that Android Marketplace gets
    # this right.
    CDMA_GOOGLE_BASE := android-sprint-us
    CDMA_CARRIER_ALPHA := Virgin_Mobile
    CDMA_CARRIER_NUMERIC := 311490
    BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0218.0248.hcd
endif

ifeq ($(SUB_MODEL),US670)
    # We're on USC (TODO)
    CDMA_GOOGLE_BASE := android-sprint-us
    CDMA_CARRIER_ALPHA := US_Cellular
    CDMA_CARRIER_NUMERIC := 310066
endif

ifeq ($(SUB_MODEL),LW690)
    # We're on Cricket 
    CDMA_GOOGLE_BASE := android-cricket-us
    CDMA_CARRIER_ALPHA := Cricket
    CDMA_CARRIER_NUMERIC := 310000
    BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0218.0248.hcd
endif

ifeq ($(SUB_MODEL),MS690)
    # We're on MetroPCS 
    CDMA_GOOGLE_BASE := android-metropcs-us
    CDMA_CARRIER_ALPHA := MetroPCS
    CDMA_CARRIER_NUMERIC := 311660
    BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0218.0248.hcd
endif

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/bin/$(BLUETOOTH_FIRMWARE):system/bin/BCM4325.hcd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.play.bootsound=1 \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC) 