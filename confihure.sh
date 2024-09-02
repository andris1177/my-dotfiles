echo -e "choose the device WARNING: this script will replace your i3, i3status, mangohud, neofetch, nvim configs:\n1: matebook\n2: x230\n3: pc"
read device

if [ $device -eq "1" ]; then
    #matebook

    # i3
    mv i3/config-laptop-matebook i3/config

    if [ -d "~/.config/i3" ]; then
        rm ~/.config/i3/config
    else
        mkdir ~/config/i3
    fi

    cp i3/config ~/.config/i3/config/
    echo i3 config has been coppied 

    #i3status
    mv i3status/config-laptop-matebook i3status/config

    if [ -d "~/.config/i3status" ]; then
        rm ~/.config/i3status/config
    else
        mkdir ~/config/i3status
    fi

    cp i3status/config ~/.config/i3status/
    echo i3status config has been coppied

elif [ $device -eq "2" ]; then
    # x230
    
    #i3
    mv i3/config-laptop-x230 i3/config

    if [ -d "~/.config/i3" ]; then
        rm ~/.config/i3/config
    else
        mkdir ~/config/i3
    fi

    cp i3/config ~/.config/i3/config/
    echo i3 config has been coppied 

    #i3status
    mv i3status/config-laptop-x230 i3status/config

    if [ -d "~/.config/i3status" ]; then
        rm ~/.config/i3status/config
    else
        mkdir ~/config/i3status
    fi

    cp i3status/config ~/.config/i3status/
    echo i3status config has been coppied

elif [ $device -eq "3" ]; then
   #pc

    #i3
    mv i3/config-pc i3/config

    if [ -d "~/.config/i3" ]; then
        rm ~/.config/i3/config
    else
        mkdir ~/config/i3
    fi

    cp i3/config ~/.config/i3/config/
    echo i3 config has been coppied 

     #i3status
    mv i3status/config-pc i3status/config

    if [ -d "~/.config/i3status" ]; then
        rm ~/.config/i3status/config
    else
        mkdir ~/config/i3status
    fi

    cp i3status/config ~/.config/i3status/
    echo i3status config has been coppied

fi

#Mangohud
if [ -d "~/.config/MangoHud" ]; then
    rm ~/.config/MangoHud/MangoHud.conf
else
    mkdir ~/config/MangoHud
fi

cp MangoHud/MangoHud.conf ~/.config/MangoHud/
echo MangoHud config has been coppied

#neofetch
if [ -d "~/.config/neofetch" ]; then
    rm ~/.config/neofetch/config.conf
else
    mkdir ~/config/neofetch
fi

cp neofetch/config.conf ~/.config/neofetch/
echo neofetch config has been coppied

#nvim
if [ -d "~/.config/nvim" ]; then
    rm -rf ~/.config/nvim/*
else
    mkdir ~/config/nvim
fi

cp -r nvim/* ~/.config/nvim/
echo nvim config has been coppied

mkdir ~/scripts
cp scripts/* ~/scripts/
echo scripts config has been coppied
