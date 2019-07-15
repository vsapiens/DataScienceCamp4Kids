from picamera import PiCamera
from time import sleep

camera = PiCamera()

# Live Preview Demo
#camera.rotation = 180
camera.start_preview()
sleep(10)
camera.stop_preview()

""" 
#Still Picture
camera.start_preview()
sleep(5)
camera.capture('/home/pi/Desktop/image.jpg')
camera.stop_preview()

#5 Pictures

camera.start_preview()
for i in range(5):
    sleep(5)
    camera.capture('/home/pi/Desktop/image%s.jpg' % i)
camera.stop_preview()

#Video Recording

camera.start_preview()
camera.start_recording('/home/pi/video.h264')
sleep(10)
camera.stop_recording()
camera.stop_preview()

# to play video 
#    |
#    |
#    |
#    |
#    v
# omxplayer video.h264


#Effects
camera.annotate_text = "Hello world!"
camera.brightness = 70
for i in range(100):
    camera.annotate_text = "Brightness: %s" % i
    camera.brightness = i
    sleep(0.1)
camera.annotate_text_size = 50

"""