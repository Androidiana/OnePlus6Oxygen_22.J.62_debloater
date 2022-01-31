# OnePlus6Oxygen_22.J.62_debloater
make OxygenOS like pure AOSP

## reason
tying to cleanup OxygenOS, removing all extra apks to make OOS like a pure Android AOSP build, no Google, no OnePlus add-ons

## modules
- **Lite** option, preserves PlayService, PlayStore and few  other core applications

- **Full** option, goes deeper, leaving a bone Android system
### pay attention
**Full** option will removes also File manager, Dialer, SMS, PlayStore, bla bla bla (you can check full list in the folder tree), so if you want to preserve one of  those, simply delete the related folder in /data/adb/modules/OnePlus6Oxygen... magisk module folder.

ex.: to restore **File Manager**, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloater/**system/system_ext/priv/OPFilemanager**

### addons
this module contais also:
- **gcam-props**, that will allow you to run ported GCam
- **dialer-support**, in any case, if you like the Google Phone

### full option extra notes
- **maps-support**, in any case, if you like the Google Maps
- **AuroraStore**, to access a thrusted repository (the PlayStore) anonimously or with your account logged sandboxed

#

  <ul>since <b>no Google sync</b> will be allowed, to manage your contacts you should:

  <li>export you contacts from https://contacts.google.com as vCard, then import the generated file in contacts application</li>
  or

  <li> install <a href="https://play.google.com/store/apps/details?id=com.microsoft.office.outlook">MS Outlook</a> as email client, grant "contacts access" sync will be restored (Outlook allows also you to access google calendar)</li>
  </ul>

#

  <ul>to restore <b>WebViewer</b>, you should:
  
  <li>delete folder /data/adb/modules/OnePlus6Oxygen_..._debloater/<b>system/product/app/WebViewGoogle</b></li>
  or  

  <li>install <a href="https://github.com/bromite/bromite/releases/latest">arm64_SystemWebView.apk</a> from Bromite repo, then move the related folder from /data/app to /data/adb/modules/OnePlus6Oxygen_..._debloater/<b>system/app</b></li>
  </ul>

#

what else?

**enjoy**!!!
