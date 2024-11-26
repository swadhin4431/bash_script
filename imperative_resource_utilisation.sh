[root@master-k8-node-01 ~]# df -Th | grep -vE 'tmp|boot' | sed -n 2p | awk {'print $6'} | cut -d '%' -f 1 | xargs -I {} sh -c 'if [ {} -gt 7 ]; then echo "warning disk"; else echo "disk ok"; fi' && top -b -n 1 | grep Cpu | awk {'print $8'} | cut -d '.' -f 1 | xargs -I {} sh -c 's=`expr 100 - {}` && if [ $s -gt 70 ]; then echo "warning cpu load"; else echo "cpu is ok";fi' && free -m | sed -n 2p | awk {'print $3/$2 * 100'} | cut -d '.' -f 1 | xargs -I {} sh -c 'if [ {} -gt 70 ]; then echo "warning memory"; else echo "memory is ok"; fi'
disk ok
cpu is ok
memory is ok
