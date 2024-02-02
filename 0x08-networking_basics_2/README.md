# Networking Basics

This file contains some basic information about network concepts and commands.

## What is localhost/127.0.0.1

Localhost is the name of the computer you are working on. It is also a domain name reserved for testing and documentation purposes. The IP address 127.0.0.1 is the loopback address, which means it refers to the same computer. It is used to establish an IP connection to the local machine without the need for a network. You can use localhost or 127.0.0.1 to access services or applications running on your own computer.

## What is 0.0.0.0

0.0.0.0 is a non-routable meta-address that means different things depending on the context. It can be used to indicate an invalid, unknown, or non-applicable target. For example, in a routing table, 0.0.0.0 usually means the default route, which is the path packets take when no other route matches. In a server application, 0.0.0.0 means listening on all available IP addresses on the local machine. This allows the server to accept connections from any network interface.

## What is /etc/hosts

The /etc/hosts file is a text file that maps hostnames to IP addresses. It is used to resolve hostnames to IP addresses on a local system, without the need for external DNS (Domain Name System) lookups. The /etc/hosts file contains one line for each hostname-to-IP address mapping, with the fields being separated by white space. For example, you can add a line like this:

`127.0.0.1 www.example.com`

This will make your computer resolve www.example.com to 127.0.0.1, instead of querying a DNS server. You can use the /etc/hosts file for various purposes, such as blocking certain websites, creating website shortcuts, or testing your website before changing the DNS.

## How to display your machine’s active network interfaces

A network interface is a device that allows your computer to communicate with other devices on a network. It can be a physical device, such as a network card, or a virtual device, such as a loopback interface. To display your machine’s active network interfaces, you can use different commands depending on your operating system. Here are some examples:

- On Windows, you can use the `ipconfig` command to show the configuration of your network interfaces. You can also use the `ncpa.cpl` command to open the Network Connections folder, which shows the graphical representation of your network interfaces.
- On Linux, you can use the `ifconfig` command to show the information about your network interfaces. However, this command is deprecated in favor of the `ip` command, which can be used to manage network interfaces and routing tables. For example, you can use `ip addr` to show the addresses of your network interfaces, or `ip link show` to show the status of your network interfaces.
- On macOS, you can use the `ifconfig` command to show the information about your network interfaces. You can also use the `networksetup` command to configure and manage your network interfaces. For example, you can use `networksetup -listallhardwareports` to show the hardware ports and associated network interfaces on your machine.
