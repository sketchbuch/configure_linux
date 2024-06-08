# Configure Linux

My ansible setup to configure linux and install apps etc. in real and virtual environments.

## Supported Distros and versions

- Ubuntu 24.04
- Fedora 40

## Prerequisites

- **Install Git**

  - `sudo apt install git` (Ubuntu)

- **Install Ansible**

  - `sudo apt install ansible` (Ubuntu)
  - `sudo dnf install ansible` (Fedora)

- **Install Flatpak**

  - See official guide, e.g. <https://flatpak.org/setup/Ubuntu>
  - Although flatpak can be installed via ansible, a restart is required.
  - Ubuntu:

    - `sudo apt install flatpak`
    - `sudo apt install gnome-software-plugin-flatpak`
    - `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
    - `flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo`

  - Fedora:

    - Already setup on Fedora, but you can set remotes if needed:
    - `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
    - `flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo`

- **Install psutil**

  - `sudo apt-get install -y python3-psutil` (Ubuntu)

## Run

`sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git local.yaml`

## Notes

- Based on: <https://www.youtube.com/watch?v=gIDywsGBqf4>
- [YML Validator](https://codebeautify.org/yaml-validator)
- [What's the difference between include_tasks and import_tasks?](https://serverfault.com/questions/875247/whats-the-difference-between-include-tasks-and-import-tasks)
- [Ansible – add user to sudo](https://blaszkowski.com/2018/09/02/ansible-add-user-to-sudo)
- [How to update package cache when using module package from ansible](https://stackoverflow.com/questions/49087220/how-to-update-package-cache-when-using-module-package-from-ansible)
- [Check if user exists with Ansible](http://loc2log.ucoz.com/blog/2020-07-04-70)

### Example Github Repos:

- <https://github.com/LearnLinuxTV/personal_ansible_desktop_configs>
- <https://github.com/pppontusw/ansible-role-linux-desktop>
- <https://gist.github.com/carlwgeorge/c560a532b6929f49d9c0df52f75a68ae>
- <https://github.com/PeterMosmans/ansible-role-customize-gnome>
- <https://github.com/FinalDes/ansible-ubuntu-disable-auto-update/>

## Hosts

The following hosts are used:

Host    | Description
------- | ------------------------------------------------------------
all     | All hosts
real    | Hosts that are real
virtual | Hosts that are virtual, running in something like virtualbox

## Tags

The following tags are used:

### Roles

Tag     | Description
------- | --------------------------------------------------------
cleanup | Cleanup tasks
common  | Tasks theat need doing no mattr what user tasks are run.
mms     | MMS User
setup   | Ansible setup and prep tasks
stephen | My user

### Tasks

Tag          | Description
------------ | ----------------------------------------------------
always       | Tasks that always need to be done
cleanup      | Tasks to do removing files and cleaning up
clock        | System clock changes
debug        | Debug tasks
dep_check    | Checking if some dependency is installed
desktop      | Desktop effects and appearance
dev          | Dev tasks
distro_tasks | Tasks targeting a specific distro like Ubuntu
extensions   | Extnsions tasks
fedora       | Fedora tasks
file-manager | File Manager tasks
files        | To do with creating/editing files
folders      | To do with creating/editing folders
fonts        | Font related tasks
git          | Git related tasks
gnome        | Gnome tasks
gtk          | GTK related tasks
kde          | KDE Tasks
mms          | Tasks for mms
mouse        | Anything to do with mice
pkg_facts    | To do with collecting package facts
profile      | Tasks to do with the profile
screensaver  | Screensaver settings
set_fact     | Storing something to a variable to be accessed later
setup        | Some kind of setup, to do with ansible
stephen      | Tasks for stephen
system       | System related tasks
terminal     | Terminal tasks like bash
text-editor  | Text Editor tasks
touchpad     | Anything to do with touchpads
ubuntu       | Ubuntu tasks
users        | Related to the uses
virtual      | Tasks for virtual computers

### Software Tasks

Tag      | Description
-------- | ------------------
flatpak  | All Flatpak tasks
package  | All Package tasks
software | All Software tasks

### Software Type Tasks

Tag             | Description
--------------- | -------------------------------
audio           | Audio software tasks
circle          | Circle App software tasks
comms           | Communication software tasks
dev             | Development software tasks
documents       | Document software tasks
editors         | Editor software tasks
file-management | File Mgmt. software tasks
games           | Game software tasks
graphics        | Graphic software tasks
internet        | Internet related software tasks
productivity    | Productivity software tasks
security        | Security software tasks
system          | System software tasks
utils           | Utility software tasks
video           | Video software tasks
virtualisation  | Virtualisation software tasks

### Software Package Tasks

Tag               | Description
----------------- | ---------------------------
0ad               | 0AD tasks
apostrophe        | Apostrophe tasks
audacity          | Audacity tasks
augustus          | Augustus tasks
authy             | Authy tasks
celeste           | Celeste tasks
chrome            | Google Chrome tasks
collision         | Collision tasks
converter         | Converter tasks
curtail           | Curtail tasks
dconf-editor      | Dconf Editor tasks
eartag            | EarTag tasks
extension-manager | Extension Manager tasks
flatseal          | Flatseal tasks
foliate           | Foliate tasks
font-manager      | Font Manager tasks
fontdownloader    | FontDownloader tasks
freefilesync      | FreeFileSync tasks
fsearch           | FSearch tasks
gimp              | GIMP tasks
gnome-boxes       | Gnome Boxes tasks
gnome-calendar    | Gnome Calendar tasks
gnome-clocks      | Gnome Clocks tasks
gnome-contacts    | Gnome Contacts tasks
gnome-extensions  | Gnome Extensions app tasks
gnome-loupe       | Gnome Loupe tasks
gnome-maps        | Gnome Maps tasks
gnome-sudoku      | Gnome Sudoku tasks
gnome-texteditor  | Gnome Text Editor tasks
gnome-web         | Gnome Web Browser tasks
gnome-weather     | Gnome Weather tasks
htop              | Htop tasks
impression        | Impression Tasks
inkscape          | Inkscape tasks
julius            | Julius tasks
kdenlive          | Kdenlive tasks
keepassxc         | KeePass XC tasks
libreoffice       | LibreOffice tasks
losslesscut       | LosslessCut tasks
msedge            | MS Edge Browser tasks
obs               | OBS Studio tasks
obsidian          | Obsidian Markdown tasks
openra            | Open Red Alert tasks
pdfarranger       | PDF Arranger tasks
peek              | Peek tasks
pinta             | Pinta tasks
pitivi            | Pitivi tasks
plocate           | Plocate tasks
postman           | Postman tasks
powertop          | Powertop tasks
rocketchat        | Rocket Chat tasks
shotcut           | Shotcut tasks
skype             | Skype tasks
slack             | Slack tasks
soundrecorder     | Sound Recorder tasks
steam             | Steam game launcher tasks
tangram           | Tangram browser tasks
tangrams          | Tangram game tasks
textpieces        | Text Pieces tasks
textsnatcher      | TextSnatcher tasks
upscaler          | Upscaler tasks
videodownloader   | Video Downloader tasks
videotrimmer      | Video Trimmer tasks
virtualbox        | VirtualBox tasks
vlc               | VLC Player tasks
warp              | Warp tasks
webfontkitgen     | Webfont Kit Generator tasks
wike              | Wike tasks

## Todo

- Nice to ahve

  - Android studio
  - ssh
  - clone repos
  - Disable auto updates virtual

- Fedora 40

  - Install Ubuntu font

- Ubuntu 24.04

  - Terminal Light Mode
  - Turn on corner

## Manual Todos

Things to do after install

- Setup online accounts
- Download keepassxc dbs
- Setup login to vsce
- Download wallpapers and set
- Clone Repos
- Deactivate desktop icons extension
