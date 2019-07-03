echo "pasv_min_port=30000" >> /etc/vsftpd/vsftpd.conf
echo "pasv_max_port=30050" >> /etc/vsftpd/vsftpd.conf
echo "anon_upload_enable=YES" >> /etc/vsftpd/vsftpd.conf
echo "anon_mkdir_write_enable=YES" >> /etc/vsftpd/vsftpd.conf
while true; do /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf; sleep 5; done
