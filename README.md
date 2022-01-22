# OnePlus6Oxygen_22.J.62_full_debloat
make OxygenOS like pure AOSP

## reason
tying to cleanup OxygenOS

### notes
hope to generate a Magisk module that, using ".replace" approach, removes all extra apks to make OOS like a pure Android AOSP build, no Google, no OnePlus add-ons

### please
pay attention, it will removes also File manager, Dialer, SMS, PlayStore, bla bla bla (you can check full list in the folder tree)
once flashed, before restarting, if you want preserve one of those, simply delete the related folder in /data/adb/modules/OnePlus6Oxygen... magisk module folder.

#### since you are here
- to restore **File Manager**, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/system_ext/priv/OPFilemanager**
- to restore **Dialer**, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/system_ext/priv-app/Dialer**
- to restore **Gallery**, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/system_ext/priv-app/OnePlusGallery**
- to restore **Contacts**, you should delete you can delete /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/system_ext/priv-app/OPContacts**
- to restore **SMS**, you should delete /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/system_ext/priv-app/OPMms**
- etc...
- to restore **WebViewer**, you should:

  delete folder /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/product/app/WebViewGoogle**

  or
  
  install https://www.bromite.org/system_web_view then move the related folder from /data/app to /data/adb/modules/OnePlus6Oxygen_..._debloat/**system/app**

### addons
this module contais also:
- **AuroraStore**, in order to access a thrusted repository (the PlayStore) anonimously or with your account logged sandboxed
- **prixel-props**, that will allow you to run ported GCam
- **dialer-support**, in any case, if you like the Google Phone
- **maps-support**, in any case, if you like the Google Maps

since **no Google sync** will be allowed, to manage your contacts you should:

- export you contacts from https://contacts.google.com as vCard, then import the generated file in contacts application

or

- install **MS Outlook** as email client, grant "contacts access" sync will be restored (Outlook allows also you to access google calendar)

what else?

enjoy!!!
