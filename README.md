# yubikey-zfs-initramfs

Yubikey two factor authentication for ZFS root filesystem.

With this extension to the zfs-initramfs package, you can unlock a ZFS
encrypted root filesystem using your YubiKey as a second factor.
The challenge-response mechanism of the YubiKey is used to generate a response
based on a passphrase (challenge). Only the combination of the challenge and
the enrolled YubiKey will generate the valid key (response).

For general setup of ZFS as root filesystem please follow the instructions in the
[OpenZFS Documentation](https://openzfs.github.io/openzfs-docs/Getting%20Started/Debian/Debian%20Bookworm%20Root%20on%20ZFS.html).

For the challenge-response mechanism of the YubiKey the second slot is used
and maybe set up as follows:

```
$ ykman otp chalresp --generate 2
```
