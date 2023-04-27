# Configure Linux

> **Warning** NOT YET READY - TESTING

My ansible setup to configure linux and install apps etc. in real and virtual environments.

## Prerequisites

- **Install Git**

  - `sudo apt install git`

- **Install Ansible**

  - `sudo apt install ansible`

- **Install Flatpak**

  - See official guide, e.g. <https://flatpak.org/setup/Ubuntu>

- **Install psutil**

  - `sudo apt-get install -y python3-psutil`

## Run

`sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git`

## Notes

Although flatpak can be installed via ansible, a restart is required.

Based on: <https://www.youtube.com/watch?v=gIDywsGBqf4>

### Example Github Repos:

- <https://github.com/LearnLinuxTV/personal_ansible_desktop_configs>
- <https://github.com/pppontusw/ansible-role-linux-desktop>

### Supported Distros and versions

- Ubuntu 22.04
- Ubuntu 23.04
- Fedora 37

## Hosts

The following hosts are used:

Host    | Description
------- | -----------------------------------------------------------
all     | All hosts
real    | Hosts that are real
virtual | Hosts that are virtual running in something like virtualbox

## Tags

The following tags are used:

### Host Types

Tag     | Description
------- | -----------------
all     | All hosts
real    | Real computers
virtual | Virtual computers

### Facts and Dependencies

Tag       | Description
--------- | ----------------------------------------------------
pkg_facts | To do with collecting package facts
dep_check | Checking if some dependency is installed
set_fact  | Storing something to a variable to be accessed later
debug     | Debug tasks

### Tasks

Tag          | Description
------------ | --------------------------------------------------
always       | Tasks that always need to be done
clock        | Clock changes
dconf        | Any tasks to do with dconf config
desktop      | Desktop effects and appearance
distro_tasks | Tasks targeting a specific distro like Ubuntu
files        | To do with creating/editing files
folders      | To do with creating/editing folders
gnome        | Gnome related tasks
gnome        | Gnome tasks
kde          | KDE Tasks
mouse        | Anything to do with mice
nautilus     | Gnome File Manager vars
screensaver  | Screensaver settings
setup        | Some kind of setup, like creating folders or files
touchpad     | Anything to do with touchpads
user         | Related to the use profile
vars         | Tasks including vars

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
gnome-extensions  | Gnome Extensions tasks
gnome-loupe       | Gnome Loupe tasks
gnome-maps        | Gnome Maps tasks
gnome-sudoku      | Gnome Sudoku tasks
gnome-texteditor  | Gnome Text Editor tasks
gnome-weather     | Gnome Weather tasks
htop              | Htop tasks
inkscape          | Inkscape tasks
julius            | Julius tasks
kdenlive          | Kdenlive tasks
keepassxc         | KeePass XC tasks
losslesscut       | LosslessCut tasks
msedge            | MS Edge Browser tasks
neofetch          | Neofetch tasks
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
