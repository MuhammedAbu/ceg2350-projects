## Lab 11

- Name:Muhammed Abushamma
- Email: abushamma.4@wright.edu

Lab questions: https://github.com/pattonsgirl/CEG2350/tree/main/Labs/Lab11

## Part 1 Answers

1. Hostname of the device: `DESKTOP-CEA088A` using the ipconfig/all in Windows. Or use commad `hostname` in linux. 
2. MAC address of the NIC connected to the network: `4C-34-88-CA-D9-D3` using ipconfig/all and looking at Wireless LAN adapter Wi-Fi
4. Subnet mask: `255.255.255.0`
5. Gateway address: `fe80::ea9f:80ff:fe15:a2ea%19`
6. DHCP server address: `192.168.1.1`
7. DNS server address: `2603:6010:7200:8a78:ea9f:80ff:fe15:a2ea`
8. Public IP used for communications outside subnet: `192.168.1.42`

## Part 2 Answers

1. `tcpdump` command: `sudo tcpdump`

   - How many packets were captured? - 109,115 packets
   - Looking through the output, what traffic are you seeing? A lot of ssh network traffic. 

2. Fancy `tcpdump` command: `sudo tcpdump -i eth0 -A host www.google.com`
3. Capturing `google.com` traffic: Used 'curl https://www.google.com' and  'curl http://www.google.com'
   - Was there a difference in output from `curl` when using `http` or `https`? No any differnces I noticed. 
   - Was there a difference in packet content in `tcpdump` when using `http` or `https`? Yes, using http on tcpdump captured packet content that was clearly readable, but almost all the content was encryted/unreadable by humans when using https in tcpdump.  
   - What caused the difference? The difference was caused by https being the encryted version of the http protocol. Https uses TLS (SSL) to encrypt and verify normal http requests and responses, making any output illegible to human discernment. 
4. Save capture to a file:  `sudo tcpdump -i eth0 -A host www.google.com -w test-capture.pcap`
    - Read capture from a file:  `sudo tcpdump -i eth0 -A host www.google.com -r test-capture.pcap` 
    - The flag -w writes (outputs) the capture to "test-capture.pcap" (must be a pcap file) and the second command with flag -r will read the fileindicated.

## Part 3 Answers

1. Command(s) to install `python3` and `pip3`: `sudo apt install python3` and `sudo apt install python3-pip`
2. Run web server with `index.html` contents in your folder: `python3 -m http.server 9000` Listening on port 9000.
3. Confirm content is being served:
   - Using `localhost`:
   - Using the system's private IP:
   - Using the system's public IP: - 
4. What's playing? - Rick Roll
5. Command to show `LISTEN`ing processes: lsof
6. Command to `kill`: kill
