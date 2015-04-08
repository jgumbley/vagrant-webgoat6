Vagrant Webgoat6
================

Just some simple automation to bring up a local webgoat6. You will need:

- An internet connection
- Vagrant & Virtualbox installed
- Ansible installed
- Clone this repo

Then:

    make
    
    
What then?
----------

Download OWASP ZAP and run it on your box. Gotcha: Change the port it binds to 8081 or it will conflict with the Goat. Try the HTML injection exercise at http://localhost:8080/WebGoat/attack?Screen=34&menu=1700

Try the Cross Site scripting exercise at http://localhost:8080/WebGoat/attack?Screen=54&menu=900
