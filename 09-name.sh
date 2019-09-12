#/bin/sh

# look up ip addresses of various search engines

# servers="yahoo.com google.com dogpile.com wolframalpha.com"

# for server in $servers; do
#     nslookup $server
#     echo "----------------------------"
# done

# exercise: Change the list of servers and also the 
# operation applied to them. For instance, use ping, 
# traceroute, or nslookup with other options.

servers="inlinewarehouse.com sap.com reddit.com"

for server in $servers; do
    ping $server
    echo "----------------------------"
    tracert $server
    echo "----------------------------"
    nslookup -querytype=mx $server
    echo "----------------------------"
    nslookup -type=ns $server
    echo "----------------------------"
    nslookup -type=soa $server
    echo "----------------------------"
done