# PortChecker
When you are working with **SOLARIS OS**, every cheap, commonplace daily task can turn into a horrible nightmare which blows your mind up! But don’t worry because SOLARIS and LINUX geeks are always ready to get you out of troubles!

This simple 23 lines script, reminds me of one of my first and sweetest experiences on facing SOLARIS when I had to run an Apache Tomcat Server with another script but I saw `Could not start apache tomcat`. I was not able to start Tomcat because its port was occupied by another process. 

Now you might think of `netstat –ano` or `lsof` or … but I had none of the above packages because it was an outdated SOLARIS version and there was no internet connection to download the packeages or update the OS. So I searched all over the net and found this script on thegeekdiary and stackoverflow. I tested it and the result was amazing because I found out the intended process!


This script is a simple shell script to check occupied ports by the other processes. The important block of this script is from 17 to 23 where it opens all of the Linux processes in `/proc/*` then searches for the port number inside their descriptions.

Because this script was so rewarding for me, I wanted to share it here and send my sincere salute to all the guys on stackoverflow and thegeekdiary!
