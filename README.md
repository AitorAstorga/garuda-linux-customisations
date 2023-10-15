<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/AitorAstorga/garuda-linux-customisations">
    <img src="images/garuda-linux-customisations-pink.png" alt="Logo" width="320" height="320">
  </a>

  <h3 align="center">Garuda Linux Customisations</h3>

  <p align="center">
    The purpose of this repo is to have a backup of all my customisations in Garuda Linux.
    <br />
    <a href="https://github.com/AitorAstorga/garuda-linux-customisations/issues">Report Bug</a>
    ·
    <a href="https://github.com/AitorAstorga/garuda-linux-customisations/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#setup">Setup</a></li>
        <li><a href="#using-the-scripts">Using the Scripts</a></li>
      </ul>
    </li>
    <li>
      <a href="#manual-customisations">Manual Customisations</a>
      <ul>
        <li><a href="#installation-paths">Installation Paths</a></li>
        <li><a href="#application-menu">Application Menu</a></li>
        <li><a href="#mozilla-firefox-window-decorations">Mozilla Firefox Window Decorations</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>


<!-- GETTING STARTED -->
## Getting Started
This project comes with two bash scripts `backup_customisations.sh` and `apply_customisations.sh`. 

### Prerequisites
- Garuda Linux (or any Linux distribution with the listed KDE Plasma paths): Arch Linux, Kubuntu, openSUSE, Manjaro, Fedora, Neon, Debian...
- Root permissions to execute the scripts.

### Setup
1. **Clone the repository**:
   ```bash
   git clone https://github.com/AitorAstorga/garuda-linux-customisations.git

2. **Navigate to the directory**:
   ```bash
   cd garuda-linux-customisations

4. **Make the scripts executable**:
   ```bash
   chmod +x backup_customisations.sh apply_customisations.sh

### Using the Scripts
1. **Backup Current Customisations**:

   To extract the current customisations from the system and place them into the "Garuda Linux Customisations" folder, run:
   ```bash
   sudo ./backup_customisations.sh
   ```
   The script will create or use an existing Garuda Linux Customisations directory and place the backup inside.
2. **Apply Customisations**:

   To apply the customisations from the "Garuda Linux Customisations" folder to the system, run:
   ```bash
   sudo ./apply_customisations.sh
   ```
   The script will copy each customisation from the folder to its respective path on the system.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Manual Customisations
This section is intended for those configurations that I want to change sometimes, but I never find :)

### Installation paths
This is the list of paths for each component:
| Customisation                    | Path                               |
|----------------------------------|------------------------------------|
| GRUB Themes                      | /usr/share/grub/themes/            |
| SDDM Themes                      | /usr/share/sddm/themes/            |
| SDDM Configuration               | /etc/sddm.conf                     |
| Plasma Look & Feel Themes        | /usr/share/plasma/look-and-feel/   |
| Plasma Desktop Themes            | /usr/share/plasma/desktoptheme/    |
| Plasma Color Schemes             | /usr/share/color-schemes/          |
| KWin Window Decorations          | /usr/share/kwin/decorations/       |
| Plasma Layout Templates          | /usr/share/plasma/layout-templates/|
| Icon Themes                      | /usr/share/icons/                  |
| Konsole Themes                   | /usr/share/konsole/                |
| Cursor Themes                    | /usr/share/icons/                  |
| Wallpapers                       | /usr/share/wallpapers/             |
| Aurorae Window Decorations       | /usr/share/aurorae/themes/         |
| Plasmoid Widgets                 | /usr/share/plasma/plasmoids/       |
| Kvantum Themes                   | /usr/share/Kvantum/                |
| Application Configuration        | ~/.config/                         |
| Global Shortcuts                 | ~/.config/kglobalshortcutsrc       |

Note: keep in mind that icons and cursors share the same path!

### Application Menu
Enable the application menu in the top bar of windows (options such as Files, Edit, View...):

1. Disable the application menu daemon and stop it if it is running:
   
   ![imagen](https://github.com/AitorAstorga/garuda-linux-customisations/assets/44289776/aecc267a-2fcf-4b80-8916-7012f79e6bd4)

2. Remove the application menu from the title bar:

   ![imagen](https://github.com/AitorAstorga/garuda-linux-customisations/assets/44289776/73524888-b4cd-46c6-979a-8c13cac0f75f)


### Mozilla Firefox Window Decorations
To merge the title bar with the Mozilla Firefox tabs do the following:
1. Right click on the toolbar > `Customise toolbar`:

   ![imagen](https://github.com/AitorAstorga/garuda-linux-customisations/assets/44289776/f4e88aa0-ddc2-41c9-bb36-02a0b0beb79a)

2. Then, in the bottom left corner disable `Title bar`:

   ![imagen](https://github.com/AitorAstorga/garuda-linux-customisations/assets/44289776/128491d4-5161-47d6-bad6-b512b40236b0)


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the GNU General Public License v3.0. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Aitor Astorga Saez de Vicuña - a.astorga.sdv@gmail.com

Project Link: [https://github.com/AitorAstorga/garuda-linux-customisations](https://github.com/AitorAstorga/garuda-linux-customisations)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/AitorAstorga/garuda-linux-customisations.svg?style=for-the-badge
[contributors-url]: https://github.com/AitorAstorga/garuda-linux-customisations/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/AitorAstorga/garuda-linux-customisations.svg?style=for-the-badge
[forks-url]: https://github.com/AitorAstorga/garuda-linux-customisations/network/members
[stars-shield]: https://img.shields.io/github/stars/AitorAstorga/garuda-linux-customisations.svg?style=for-the-badge
[stars-url]: https://github.com/AitorAstorga/garuda-linux-customisations/stargazers
[issues-shield]: https://img.shields.io/github/issues/AitorAstorga/garuda-linux-customisations.svg?style=for-the-badge
[issues-url]: https://github.com/AitorAstorga/garuda-linux-customisations/issues
[license-shield]: https://img.shields.io/github/license/AitorAstorga/garuda-linux-customisations.svg?style=for-the-badge
[license-url]: https://github.com/AitorAstorga/garuda-linux-customisations/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/aitor-astorga-saez-de-vicuña
[product-screenshot]: images/screenshot.png
