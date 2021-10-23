#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
com.xiaomi.macro
HybridPlatform
mab
MiLink
MIpay
MIUIAccessibility
MiuiBugReport
MIUIgreenguard
MiGameCenterSDKService
MSA
Browser
Mirror
MIService
MIShare
MIUICalendar
MiuiCamera
MIUIGallery
MIUIVideo
MIUIMusic
MIUIQuickSearchBox
VoiceAssist
VoiceTrigger
TSMClient
NextPay
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
