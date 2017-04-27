# -*- mode: ruby -*-
# vi: set ft=ruby :

USER = ENV["USER"] || ""

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial"

    config.ssh.forward_agent = true

    # provider specific configuration

    ["lxc", "virtualbox"].each do |local_provider|
        config.vm.provider local_provider do |vb, override|
            if local_provider == "virtualbox"
                vb.memory = 1536
            end
            if local_provider == 'lxc'
                override.vm.box = 'developerinlondon/ubuntu_lxc_xenial_x64'
            end
            override.vm.network "forwarded_port", guest: 8541, host: 8541

            override.vm.provision "shell", path: "conf/installs.sh"
            override.vm.provision "shell", path: "conf/unpriv.sh", privileged: false

        end
    end



end
