# Copyright (C) 2020 Atrate <atrate@protonmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# Thanks to Jman420 for these volume input functions,
# Thanks to Atrate for suggestion
# --------------------------------------------------

keytest() 
{
	ui_print " ########################################### "
	ui_print "#                                           #"
    ui_print "# Vol Key Test                              #"
	ui_print "# - - - - - - - - - - - - - - - - - - - - - #"
    ui_print "#    Press Vol Up:                          #"
	ui_print "#                                           #"
    (/system/bin/getevent -lc 1 2>&1 | /system/bin/grep VOLUME | /system/bin/grep " DOWN" > "$TMPDIR"/events) || return 0
    return 1
}

# Ask user for MDD mode
# ---------------------
choose() 
{
	ui_print " ########################################### "
	ui_print "#                                           #"
	ui_print "# Select debloating mode                    #"
	ui_print "# - - - - - - - - - - - - - - - - - - - - - #"
	ui_print "#                                           #"
	ui_print "# ( + ) = FULL: OxygenOs as /e              #"
	ui_print "# ( - ) = LITE: debloating, gapps preserved #"
	ui_print "# - - - - - - - - - - - - - - - - - - - - - #"
	ui_print "#                                           #"

    #note from chainfire @xda-developers: getevent behaves weird when piped, and busybox grep likes that even less than toolbox/toybox grep
    while (true); do
        /system/bin/getevent -lc 1 2>&1 | /system/bin/grep VOLUME | /system/bin/grep " DOWN" > "$TMPDIR"/events
        if (`cat "$TMPDIR"/events 2>/dev/null | /system/bin/grep VOLUME >/dev/null`); then
            break
        fi
    done
    if (`cat "$TMPDIR"/events 2>/dev/null | /system/bin/grep VOLUMEUP >/dev/null`); then
        return 0
    else
        return 1
    fi
}

# Check whether using a legacy device
# -----------------------------------
if keytest; then
    FUNC=choose
else
    FUNC=false
fi


# Remove directories
# ----------------------------------------------------
if "$FUNC"; then
	ui_print "# plus detected - going FULL mode           #"
else
    rm -r "$MODPATH/system/app/com.aurora.store" "$MODPATH/system/framework" "$MODPATH/system/priv-app/CalendarProvider" "$MODPATH/system/priv-app/DiracAudioControlService" "$MODPATH/system/priv-app/DiracManager" "$MODPATH/system/priv-app/OnePlusCamera" "$MODPATH/system/priv-app/OnePlusCameraService" "$MODPATH/system/product/app/GoogleContactsSyncAdapter" "$MODPATH/system/product/app/WebViewGoogle" "$MODPATH/system/product/priv-app/GmsCore" "$MODPATH/system/product/priv-app/Phonesky" "$MODPATH/system/system_ext/app/DynamicDDSService" "$MODPATH/system/system_ext/app/OPFilemanager" "$MODPATH/system/system_ext/priv-app/Dialer" "$MODPATH/system/system_ext/priv-app/OPContacts" "$MODPATH/system/system_ext/priv-app/OPMms"
	ui_print "# minus detected - going LITE mode          #"
fi

ui_print "# - - - - - - - - - - - - - - - - - - - - - #"
ui_print "#                                           #"
ui_print "# enjoy!                                    #"
ui_print "#                                           #"
ui_print " ########################################### "
