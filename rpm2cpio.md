---
tags: [ packaging ]
---
# To list contents of an RPM:
rpm2cpio <rpm-file> | cpio -vt

# To extract contents of an RPM:
rpm2cpio <rpm-file> | cpio -vid
