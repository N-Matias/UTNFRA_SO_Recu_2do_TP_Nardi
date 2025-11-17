   54  sudo fdisk -l
   55  sudo fdisk /dev/sdc
   56  sudo fdisk /dev/sdd
   57  sudo fdisk /dev/sdc
   58  sudo fdisk /dev/sdd
   59  sudo fdisk -l
   60  sudo pvcreate /dev/sdc1 /dev/sdd2
   61  sudo vgcreate vg_datos /dev/sdc1 /dev/sdd2
   62  sudo vgs
   63  sudo lvcreate -L 10M vg_ssd -n lv_docker
   64  sudo lvcreate -L 10M vg_datos -n lv_docker
   65  sudo vgs
   66  sudo lvcreate -L 1.5G vg_ssd -n lv_multimedia
   67  sudo lvcreate -L 1.5G vg_datos -n lv_multimedia
   68  sudo lvcreate -L 100%FREE vg_datos -n lv_multimedia
   69  sudo lvcreate -l 100%FREE vg_datos -n lv_multimedia
   70  sudo lvs
   71  sudo fdisk -l
   72  sudo mkswap /dev/sdc3
   73  free -h
   74  sudo swapon /dev/sdc3
   75  free -h
   76  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
   77  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
   78  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   79  df -h
   80  sudo mkdir /Multimedia
   81  sudo mount /vg_datos-lv_docker /var/lib/docker/
   82  sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
   83  df -h
   84  history
