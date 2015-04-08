Vagrant Webgoat6
================

Just some simple automation to bring up a local webgoat6. You will need:

- An internet connection
- Vagrant & Virtualbox installed
- Ansible installed
- Clone this repo

Then:

    make

If the webgoat does not come up properly on your box raise an issue..!
    
re: Webgoat6, see: http://webgoat.github.io/
    
    
What then?
----------

Start using WebGoat and working through the exercises!
Recommend the HTML injection exercise for beginners or jump straight to the XSS exercise if you are a Javascript badass.

http://localhost:8080/WebGoat

Also, to help, download OWASP ZAP tool and run it on your box!
Gotcha: Change the port it binds to 8081 or it will conflict with the Goat.

https://code.google.com/p/zaproxy/wiki/Downloads?tm=2


