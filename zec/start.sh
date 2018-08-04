nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=150" \
                -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=1000"

sudo nvidia-smi -i 0 -pl 120

./miner --server zec-us-west1.nanopool.org --user t1aZppGm9nUoMFH9ofd9Nkbv3N7kSgcUBwV.cmdcenter/jordanmmck@gmail.com --pass z --port 6666
