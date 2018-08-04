# 1150 is stable 24h
# anything higher not stable
nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=-100" \
                -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=1000"

sudo nvidia-smi -i 0 -pl 105

./ethminer -U -S eth-us-west1.nanopool.org:9999 -O 0x2b1bfc5dcd4e21ceaa5f512e350b00c585dae894.cmdcenter/jordanmmck@gmail.com

