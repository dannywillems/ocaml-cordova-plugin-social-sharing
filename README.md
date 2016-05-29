# ocaml-cordova-plugin-social-sharing

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-social-sharing/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-social-sharing.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-social-sharing)

Binding to
[cordova-plugin-x-socialsharing](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin)

## What does cordova-plugin-social-sharing do ?

```
This plugin allows you to use the native sharing window of your mobile device.
```

Source: [cordova-plugin-x-socialsharing](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

* If you added
[ocaml-cordova-plugin-list](https://github.com/dannywillems/ocaml-cordova-plugin-list)
as opam package provider, you can use
```
opam install cordova-plugin-social-sharing
```

* Else, you can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-social-sharing https://github.com/dannywillems/ocaml-cordova-plugin-social-sharing.git
```

To compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-social-sharing [...] -linkpkg [other arguments]
```

Don't forget to install the cordova-plugin-x-social-sharing with
```Shell
cordova plugin add https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin
```

## How to use ?

* See the [official documentation](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin)
