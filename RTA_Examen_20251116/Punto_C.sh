# No estoy seguro si es la forma correcta de comentar pero borre los comandos repetidos, que escribi mal o que de plano eran para verificar algo que no necesitaba o que entendi mal, Por eso los numeros estan salteados en algunas partes
294  cd UTN-FRA_SO_Examenes
295  ls
296  cd 202411
297  ls
298  cd docker
299  ls
300  cd web
301  ls
302  cat index.html
303  vim index.html
304  cat index.html
305  vim index.html
306  cat index.html
307  cd
308  cd UTN-FRA_SO_Examenes
309  cd 202411
310  cd docker
311  ls
312  vim Dockerfile
313  cd
314  sudo usermod -aG docker Nardi
315  sudo usermod -aG docker vagrant
316  cd UTN-FRA_SO_Examenes
317  cd 202411
318  cd docker
319  docker build -t nardi/r2doparcial_nardi:latest
320  docker build -t web2-nardi .
321  docker images
322  docker build -t web2-nardi .
323  sudo apt clean
324  docker build -t web2-nardi .
341  fdisk
342  fdisk -l
343  sudo fdisk -l
344  fdisk /dev/sdb2
345  fdisk /dev/sdb
346  sudo fdisk /dev/sdb2
347  sudo fdisk /dev/sdb
348  fdisk -l
349  sudo fdisk -l
351  sudo fdisk sdc
353  sudo fdisk sdc
354  sudo fdisk -l
356  sudo lvextend -l +100%FREE vg_datos-lv_docker
357  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
359  sudo pvcreate /dev/sde
360  sudo fdisk /dev/sdc
363  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
364  sudo vgs
365  sudo fdisk /dev/sdc
366  sudo fdisk -l
367  sudo fdisk /dev/sdc2
368  sudo fdisk /dev/sdc
369  sudo pvcreate /dev/sdc2
370  sudo vgextend vg_datos /dev/sdc2
371  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
372  docker build -t web2-nardi .
380  sudo fdisk /dev/sdd
381  sudo pvcreate /dev/sdd1
382  sudo vgextend vg_datos /dev/sdd1
383  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
387  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
388  docker build -t web2-nardi .
389  sudo lvs
390  df -h /var/lib/docker
391  sudo resize2fs /dev/mapper/vg_datos-lv_docker
392  docker build -t web2-nardi .
394  cd web
395  ls
396  cat index.html
400  cd UTN-FRA_SO_Examenes/202411/docker
402  vim Dockerfile
403  docker build -t web2-nardi .
404  docker run -d -p 8080:80 web2-nardi
405  ip a
406  curl http://10.0.2.15:8080
407  docker login
409  docker tag web2-nardi nardimatias/web2-nardi:latest
410  docker push nardimatias/web2-nardi:latest
412  cd web
414  cd file
416  vim info.txt
417  whoami
418  id -u vagrant
419  sudo grep vagrant /etc/shadow
420  vim info.txt
421  cat info.txt
