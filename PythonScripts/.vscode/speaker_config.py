"""
aplay /usr/share/sounds/alsa/*
sudo apt-get install espeak
espeak "Text you wish to hear back" 2>/dev/null
espeak "Hello World" 2>/dev/null
sudo pip3 install num2words
sudo python3 speak_count.py

--Modifying the Voice
espeak -ven+m5 "Welcome to Dexter tutorial" 2>/dev/null
--Speech Speed
espeak -s250 "Welcome to Dexter tutorial" 2>/dev/null
--Pause Between Words
espeak -g10 "Welcome to Dexter tutorial" 2>/dev/null
"""