# symlink in /etc/init.d/localpypi
# update-rc.d localpypi defaults <- to run on startup

PIDFILE=localpypi.pid

case "$1" in
	start)
		cmd="start-stop-daemon --start --make-pidfile --pidfile $PIDFILE --exec /root/local-pypi/pypi/bin/pypi-server -- --passwords=.password eggs"	
		if $cmd; then
			exit 0
		else
			exit 1
		fi
	;;
	stop)
		cmd="start-stop-daemon --stop --pidfile $PIDFILE"
		if $cmd; then
			exit 0
		else
			exit 1
		fi
	;;
	*)
		echo "Usage: /etc/init.d/localpypi {start|stop}"
		exit 1
esac

exit 0
