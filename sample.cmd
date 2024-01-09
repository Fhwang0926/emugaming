docker run \
  --volume /root/emu/win7.qcow2:/disk.qcow2 \
  --volume /root/emu/iso:/iso \
  --interactive --tty \
  -p 6901:5900 \
  -p 9833:3389 \
  -e CPU='2' \
  -e MEMERY='4G' \
  -e ISOFILE='virtio-win-0.1.240.iso' \
  -e USEKVM='true' \
  --device /dev/kvm\
  --device /dev/vfio/vfio \
  --device /dev/vfio/1 \
  --ulimit memlock=-1:-1 \
  --device /dev/bus/usb \
  --volume /dev/bus/usb:/dev/bus/usb \
  --volume /lib/modules:/lib/modules \
  --privileged \
  emengweb/emu-windows:latest