awk 'BEGIN{FS=" "}{d=substr($4,2,11); print d, $1}' access.head.log
date --date="5 days ago" +%d/%m/%Y