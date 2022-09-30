## **Bullseye Ice** (instructions in Serbian)
### *Debian Bullseye sa IceWM*

1. Potrebno je prvo skinuti sa Debianovog sajta ISO instalacioni fajl:
    * https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current/amd64/iso-cd/firmware-11.5.0-amd64-netinst.iso
1. Pomoću Rufusa ili Etchera napraviti butabilni instalacioni USB Flash 
1. Instalirati na odabranu particiju metodom INSTALL ili GRAPHICAL INSTALL (zavisno od RAM-a i procesora)
1. Izostaviti _ROOT_ password tako da _USER_ ima automatski _SUDO_ ovlašćenja
1. Na pitanje koje Grafičko okruženje da se instalira (_Tasksel_), od više ponuđenih (_KDE_,_LXDE_,..._Debian default_),  
 ne izabrati ni jedno i čak odčekirati sve osim _default utillity_
1. Posle instalacije i restarta, butuje se u konzolu (_TTY_), gde unosimo username i password  
1. ažuriranje softvera  
_` sudo apt update && sudo apt full-upgrade`_
1. instaliranje git-a  
_`sudo apt install git`_
1. kloniranje git repozitorijuma Buster_Ice  
_`git clone https://github.com/debian-openbox/Bullseye_Ice.git`_
1. promena aktivnog direktorijuma  
_`cd Bullseye_Ice`_
1. maksimalno podizanje ovlašćenja pristupa repozitorijumu Buster_Ice rekurzivno  
_`sudo chmod --recursive 777 .`_
1. promena aktivnog direktorijuma  
_`cd scripts`_
1. Startovanje skripte _Bullseye_Ice.sh_  
_`sudo ./Bullseye_Ice.sh`_
1. Restart  
_`sudo reboot`_
1. Posle restarta potrebno je u konfiguracionim fajlovima **ncmpcpp** (_`~/.mpd/mpd.conf`_ i _`~/.ncmpcpp/config`_)  
promeniti putanju foldera sa muzikom ili ostaviti po default-u (_`~/Music`_):  
_`sudo geany ~/.mpd/mpd.conf`_  
_`sudo geany ~/.ncmpcpp/config`_  
_`sudo reboot`_

## AKO SE INSTALIRA U VIRTUALBOX-u
* potrebno je u tački 6. pre restarta instalirati GuestAdditions iz konzole (TTY):  
https://youtu.be/CwQ8XzP-h4Q?list=PL7ygF5ucclBQgWy6VruCjggBEXZxOcnxz
* Dodati user-a grupi vboxsf (za šerovanje fajlova sa HOST-om)  
_`sudo adduser $USER vboxsf`_
* dalje je isto od tačke 7. do kraja


