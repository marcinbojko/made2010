# Microsoft Access Database Engine 2010 Redistributable

![Chocolatey](https://img.shields.io/badge/Chocolatey-orange)
![Windows2016](https://img.shields.io/badge/Windows-2016-blue)
![Windows2019](https://img.shields.io/badge/Windows-2019-blue)
![Windows2022](https://img.shields.io/badge/Windows-2022-blue)
![Windows10](https://img.shields.io/badge/Windows-10-lightblue)
![Windows11](https://img.shields.io/badge/Windows-11-lightblue)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/marcinbojko)

Consider buying me a coffee if you like my work. All donations are appreciated. All donations will be used to pay for pipeline running costs

## Description

This download will install a set of components that can be used to facilitate transfer of data between 2010 Microsoft Office System files and non-Microsoft Office applications.
The Access Database Engine 2010 Redistributable is not intended:

* As a general replacement for Jet (If you need a general replacement for Jet you should use SQL Server Express Edition).
* As a replacement for the Jet OLEDB Provider in server-side applications.
* As a general word processing, spreadsheet or database management system -To be used as a way to create files. (You can use Microsoft Office or Office automation to create the files that Microsoft Office supports.)
* To be used by a system service or server-side program where the code will run under a system account, or will deal with multiple users identities concurrently, or is highly reentrant and expects stateless behavior. Examples would include a program that is run from task scheduler when no user is logged in, or a program called from server-side web application such as ASP.NET, or a distributed component running under COM+ services.

## Features

* Install and uninstall via Chocolatey
* Supports 32/64-bit version

## System Requirements

Windows 7, Windows 8, Windows Server 2003 R2 (32-Bit x86), Windows Server 2003 R2 x64 editions, Windows Server 2008 R2, Windows Server 2008 Service Pack 2, Windows Server 2012 R2, Windows Vista Service Pack 1, Windows XP Service Pack 3

Only the 32-bit Access Database Engine may be used on Windows XP Service Pack 3

## Changelog

* 2024-04-1 - 2024.04.11
  * [BREAKING CHANGE] - Due to Microsoft Access Database Engine 2010 Redistributable being removed from the Microsoft website, the package has switched to webarchive. There is no binary switch from previous release, but there is no guarantee that the package will work as expected. Please test it before using in production.

## Usage

### Direct

```cmd
choco install made2010 -y
```

### YAML (The Foreman puppetlabs/chocolatey module)

```yaml
made2010:
  ensure: latest
```
