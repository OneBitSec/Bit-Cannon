echo "snap install..." && yum yum install epel-release && yum install snapd && systemctl enable --now snapd.socket &&\
ln -s /var/lib/snapd/snap /snap && echo "snap in installed!"
echo "go install..." && yum install go -y && echo "go is installed"
echo "pip install.." && yum -y install python-pip && echo "pip is installed"
echo "python3 install.." && yum -y install python3 && echo "python3 is installed"
echo "pip is update..." && python -m pip install --upgrade pip && python3 -m pip install --upgrade pip && echo "succuess"
echo "python requirements being install" && pip install -r python_requirements.txt --user && pip3 install python_requirements.txt --user && echo "succuess"
