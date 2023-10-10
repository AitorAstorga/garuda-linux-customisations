<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
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
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Garuda Linux Customisations</h3>

  <p align="center">
    The purpose of this repo is to have a backup of all my customisations in Garuda Linux.
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template">View Demo</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Report Bug</a>
    ·
    <a href="https://github.com/othneildrew/Best-README-Template/issues">Request Feature</a>
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
    <li><a href="#installation-paths">Installation paths</a></li>
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


## Installation paths
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

Enable the menu app in the top bar of windows (options such as Files, Edit, View...):

![imagen](https://github.com/AitorAstorga/garuda-linux-customisations/assets/44289776/9b053bbf-77a2-4b19-9734-09cfebaf6268)

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
