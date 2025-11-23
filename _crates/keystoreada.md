---
layout: crate
crate: "keystoreada"
authors: ["Stephane.Carrez@gmail.com"]
maintainers: ["Stephane.Carrez@gmail.com"]
licenses: ["Apache-2.0"]
websites: ["https://gitlab.com/stcarrez/ada-keystore"]
tags: ["security",
"storage",
"nosql"]
version: "1.4.2"
short_description: "Ada Keystore"
dependencies: [{crate: "utilada", version: "^2.8.0"}]
configuration_variables: []
configuration_values: []

---
[![Build Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-keystore/badges/build.json)](https://porion.vacs.fr/porion/projects/view/ada-keystore/summary)
[![Test Status](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-keystore/badges/tests.json)](https://porion.vacs.fr/porion/projects/view/ada-keystore/xunits)
[![Coverage](https://img.shields.io/endpoint?url=https://porion.vacs.fr/porion/api/v1/projects/ada-keystore/badges/coverage.json)](https://porion.vacs.fr/porion/projects/view/ada-keystore/summary)

# Overview

Ada Keystore is a tool and library to store information in secure wallets
and protect the stored information by encrypting the content.
It is necessary to know one of the wallet password to access its content.
Ada Keystore can be used to safely store passwords, credentials,
bank accounts and even documents.

Wallets are protected by a master key using AES-256 and the wallet
master key is protected by a user password.
The wallet defines up to 7 slots that identify
a password key that is able to unlock the master key.  To open a wallet,
it is necessary to unlock one of these 7 slots by providing the correct
password.  Wallet key slots are protected by the user's password
and the PBKDF2-HMAC-256 algorithm, a random salt, a random counter
and they are encrypted using AES-256.

Values stored in the wallet are protected by their own encryption keys
using AES-256.  A wallet can contain another wallet which is then
protected by its own encryption keys and passwords (with 7 independent slots).
Because the child wallet has its own master key, it is necessary to known
the primary password and the child password to unlock the parent wallet
first and then the child wallet.

## Documents

* [Ada Keystore Guide](https://ada-keystore.readthedocs.io/en/latest/) [PDF](https://github.com/stcarrez/ada-keystore/blob/master/docs/keystore-book.pdf)



