#!/bin/bash

service sshd start

su gpadmin -l -c "source /usr/local/greenplum-db/greenplum_path.sh;gpssh-exkeys -f /tmp/gpdb-hosts; gpinitsystem -a -c  /tmp/gpinitsystem_singlenode -h /tmp/gpdb-hosts; exit 0 "        
echo -e 'host all all 0.0.0.0/0 trust' >> /data/master/gpseg-1/pg_hba.conf
su gpadmin -l -c "pg_ctl restart -D /data/master/gpseg-1"

tail -F /home/gpadmin/gpAdminLogs/*.log

