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

* [Start using WebGoat and working through the exercises!](http://localhost:8080/WebGoat)

Download OWASP ZAP and run it on your box. Gotcha: Change the port it binds to 8081 or it will conflict with the Goat.

Recommend the HTML injection excercise for beginners or jump straight to the XSS exercise if you are a Javascript badass.
