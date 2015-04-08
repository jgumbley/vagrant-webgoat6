GOAT_JAR:= WebGoat-6.0.1-war-exec.jar

define green
	@tput setaf 2; echo $1; tput sgr0;
endef

.PHONY: default¬
default: goatbox
	$(call green,"[Browse to http://localhost:8080/WebGoat/]")

.PHONY: goatbox
goatbox: $(GOAT_JAR)
	vagrant up
	$(call green,"[Using Vagrant to bring up goat VM success]")

GOAT_URL:= https://webgoat.atlassian.net/builds/browse/WEB-WGM/latestSuccessful/artifact/shared/WebGoat-Embedded-Tomcat/
$(GOAT_JAR): 
	curl --silent -O $(GOAT_URL)$(GOAT_JAR)
	$(call green,"[Downloaded Webgoat jar]")

clean:
	vagrant halt
	vagrant destroy -f
	rm *.jar
	$(call green,"[Cleaned up]")
