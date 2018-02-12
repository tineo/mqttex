import paho.mqtt.client as paho
import time
broker="localhost"
port=1883
def on_publish(client,userdata,result):             #create function for callback
	print("data published \n")
pass

client1= paho.Client()                           #create client object
client1.on_publish = on_publish                          #assign function to callback
client1.connect(broker,port,60)                                 #establish connection


while True:
	ret= client1.publish("house/bulb1","Ya Esta MQTT!") 
	time.sleep(0.4)
