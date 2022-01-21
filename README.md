# OnePlus6Oxygen_22.J.62_OTA_0620_full_debloat
make OxygenOS like pure AOSP

this is a Magisk module that simply removes all extra apks and services to make OOS like an pure Android AOSP build
no Google, no OnePlus features

pay attention, this removes also File manager, Dialer, SMS, PlayStore, bla bla bla
once flashed, before restarting, if you need to keep one or more of those, you can simply delete the related folder in /data/adb/modules/OnePlus6Oxygen... folder

since you are here:
to restore FileManager, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/system/system_ext/priv/OPFilemanager
to restore Dialer, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/system/system_ext/priv-app/Dialer
to restore Gallery, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/system/system_ext/priv-app/OnePlusGallery
to restore Contacts, you should delete you can delete /data/adb/modules/OnePlus6Oxygen_..._debloat/system/system_ext/priv-app/OPContacts
to restore SMS, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/system/system_ext/priv-app/OPMms
etc...
to restore WebViewer, you should:
- delete folder /data/adb/modules/OnePlus6Oxygen_..._debloat/system/product/app/WebViewGoogle
or
- install https://www.bromite.org/system_web_view then move the related folder from /data/app to /data/adb/modules/OnePlus6Oxygen_..._debloat/system/app

this module contais also AuroraStore, in order to be able to retrieve thrusted applications from the PlayStore anonimously or with your account logged sandboxed
since no Google sync will be allowed, to manage your contacts you should:
- export you contacts from https://contacts.google.com as vCard, then import the generated file in contacts application
or
- install MS Outlook as email client, grant "contacts access" sync will be restored (Outlook allows also you to access google calendar)

what else?

enjoy!!!
