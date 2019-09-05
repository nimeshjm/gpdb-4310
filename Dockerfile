FROM	pivotaldata/gpdb4310

RUN	rm -rf /data && \
	rm -f /home/gpadmin/.gphostcache && \
	rm -f /tmp/.s.PGSQL.* && \
	mkdir -p /data/master /data/primary && \
	chown -R gpadmin: /data 

ADD	--chown=gpadmin:gpadmin entrypoint.sh /home/gpadmin/

EXPOSE	5432

ENTRYPOINT	["/home/gpadmin/entrypoint.sh"]
