python3 -m venv /var/venv/simple-provision
source /var/venv/simple-provision/bin/activate
grep -q "activate" ~/.bashrc || echo -e "\nsource /var/venv/simple-provision/bin/activate\n" >> ~/.bashrc
/var/venv/simple-provision/bin/pip install --upgrade pip
pip install -r /vagrant/requirements.txt

