# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Kernel
git clone https://github.com/PixelExperience-Devices/kernel_xiaomi_chime.git -b thirteen kernel/xiaomi/chime 

# Vendor
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_chime.git -b thirteen vendor/xiaomi/chime

# perf
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_chime-perf.git -b thirteen vendor/xiaomi/chime-perf

rm -rf system/libhidl

#lib
git clone https://github.com/ArrowOS/android_system_libhidl.git -b arrow-13.0 system/libhidl
