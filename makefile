#
# Makefile for S55
#

local-zip-file := stockrom.zip

local-out-zip-file := MIUI_s55.zip

local-modified-apps := 

local-modified-jars := org.cyanogenmod.platform.jar

local-miui-removed-apps := FM

local-miui-modified-apps := 

local-density := XHDPI

local-remove-apps := 

local-remove-priv-apps := Trebuchet

#local-phone-apps := 

local-phone-priv-apps :=
 
local-certificate-dir := security

local-target-bit := 32

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	@echo goodbye! miui prebuilt binaries!
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32

