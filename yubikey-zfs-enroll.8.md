% YUBIKEY-ZFS-ENROLL(8) yubikey-zfs-enroll user manual

# NAME

yubikey-zfs-enroll - Enroll a YubiKey as a second factor for unlocking an
encrypted ZFS dataset.

# SYNOPSIS

`yubikey-zfs-enroll` [-f] *ZFS* [*CHALLENGE*]

`yubikey-zfs-enroll` -h

# DESCRIPTION

yubikey-zfs-enroll enrolls a YubiKey as a second factor for unlocking an
encrypted ZFS dataset.

The challenge-response mechanism of the second slot of the YubiKey is used to
generate a response based on a passphrase (challenge). Only the combination
of the challenge and the matching YubiKey will generate the valid key.

yubikey-zfs-enroll requires that the existing key for the dataset is already
loaded. While the enroll process the user will be prompted to enter the
challenge, alternatively the challenge can be passed as an argument. Further
a confirmation is required before the YubiKey is fianlly enrolled.
The confirmation can be skipped with the `-f` option.

# OPTIONS

`-h`  Show the help message and exit.

`-f`  Force the enrollment process, no confirmation will be prompted.

# SEE ALSO

zfs-change-key(8), ykman(1)

# AUTHOR

Written by Tobias Schäfer <tschaefer@blackox.org>

# COPYRIGHT

Copyright © 2024 Tobias Schäfer <tschaefer@blackox.org> License GPLv3+: GNU GPL
version 3 or later <https://gnu.org/licenses/gpl.html>.
This  is free software: you are free to change and redistribute it. There is
NO WARRANTY, to the extent permitted by law.
