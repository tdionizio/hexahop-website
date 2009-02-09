# /bin/sh

# You can also access the host with SFTP:
# sftp <username>,hexahop@web.sourceforge.net


# Upload the contents of htdocs to the web server.
if test "a$1" = "a"; then
	echo "Usage: $0 <username>"
	exit 0
fi
rsync -avz --cvs-exclude --delete htdocs/ $1,hexahop@web.sourceforge.net:htdocs/
