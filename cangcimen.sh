sudo apt update
sudo apt install screen -y
screen -dmS cangcimen.sh 65 75
sudo apt update
sudo apt install libpci3
wget https://github.com/bzminer/bzminer/releases/download/v8.0.0/bzminer_v8.0.0_linux_cuda_tk.tar.gz
tar xvf bzminer_v8.0.0_linux_cuda_tk.tar.gz
chmod +x bzminer
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0x1E9413143F79712de0c84d275D39920BEB311779 -p stratum+ssl://eth-hk.flexpool.io:5555 stratum+ssl://eth-sg.flexpool.io:5555 -r $ip-BZ --nvidia 1
