# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# This value defines which overlay should be choose, only use for baidu internal.
# Support values: rom-mtk, baidu-4.0
# when your product is mtk, you can choose rom-mtk, otherwise set it to baidu-4.0
#-----------------------------------------------------------------------------
BAIDU_FRAMEWORK_OVERLAY_TYPE := baidu-4.0

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := xhdpi

##############################################################################
# This value will control the method of pack or unpack image and so on
# you can use mtk/qualcomm/ti/nvidia
#-----------------------------------------------------------------------------
PLATFORM := nvidia

##############################################################################
# This value will control the method of unpack image when prepare BOOT when use a ota base zip
# you can use mtk/qualcomm/ti/nvidia
#-----------------------------------------------------------------------------
BASE_PLATFORM := nvidia

##############################################################################
# you can custom boot image and recovery image name
#-----------------------------------------------------------------------------
# BOOT_IMG := bootname
# RECOVERY_IMG := recoveryname

##############################################################################
# use for newproject, not unpack boot.img to BOOT, or not unpack recovery.img to RECOVERY
# Support Values:
# false, not unpack
#-----------------------------------------------------------------------------
# PRJ_UNPACK_BOOT_IMG := false
# PRJ_UNPACK_RECOVERY_IMG := false

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# true, use prebuilt boot.img/recovery.img
# flase, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, none boot.img/recovery.img
#-----------------------------------------------------------------------------
PREBUILT_BOOT_IMG := false
PREBUILT_RECOVERY_IMG := true

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app appbackup customize/resource media/audio/notifications media/zchgd

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := FMRadioService Bluetooth

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
#vendor_modify_apps := FM_Radio framework-htc-res

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework framework2 services HTCExtension

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUpdate

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# property to show/hide feature of defaultWrite Settings
override_property += \
    ro.baidu.default_write.settable=true

# modify for generate ota zip
override_property += \
    ro.build.description=baidu_onex 2.17.1400.6 IMM76D CL96531 release-keys \
    ro.build.fingerprint=htccn_chs/endeavoru/endeavoru:4.0.4/IMM576/96531.6:user/release-keys

# hide the soft mainkeys
override_property += \
    qemu.hw.mainkeys=1

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
        ro.operator.optr \
        ro.operator.spec \
        ro.operator.seg

include $(PORT_BUILD)/main.mk
