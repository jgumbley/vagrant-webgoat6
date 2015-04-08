define green
	@tput setaf 2
	@tput bold
	@echo $1
	@tput sgr0
endef

ansible-playbook=ansible-playbook -i \
	.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory \
   	--private-key=.vagrant/machines/devbox/virtualbox/private_key -u vagrant

.PHONY: default¬
default: goatbox
	$(call green,"[Devbox up so use vagrant ssh or make ssh to step into]")

# Targets to support the local webgoat vagrant VM
# =================================================

.PHONY: goatbox
goatbox:
	vagrant up
	$(call green,"[Using Vagrant to bring up goat VM success]")

clean:
	vagrant halt
	vagrant destroy -f
	$(call green,"[Cleaned up]")

