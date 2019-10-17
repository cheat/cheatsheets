# To verify if ntpd is running:
service ntp status

# To start ntpd if not running:
service ntp start

# To display current hardware clock value:
sudo hwclock -r

# To apply system time to hardware time:
sudo hwclock --systohc

# To apply hardware time to system time:
sudo hwclock --hctosys

# To set hwclock to local time:
sudo hwclock --localtime

# To set hwclock to UTC:
sudo hwclock --utc

# To set hwclock manually:
sudo hwclock --set --date="8/10/15 13:10:05"

# To query surrounding stratum time servers
ntpq -pn

# To config file:
/etc/ntp.conf

# To driftfile:
# location of "drift" of your system clock compared to ntp servers:
/var/lib/ntp/ntp.drift
