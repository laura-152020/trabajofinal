$ORIGIN miemprendimiento.com.
$TTL 86400 ;
@   IN  SOA servidor postmaster (
        202204301 ;
        6H ;
        1H ;
        2W ;
        3H ;
)
    IN  NS  www
www IN  A   172.17.0.2