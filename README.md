# ssmtp-formula
A Saltstack formula for replacing the base sendmail with ssmtp.
This disables sendmail and replaces it with ssmtp for those systems that want to send mail only through a relay. As outlined here:
https://www.freebsd.org/doc/en/books/handbook/outgoing-only.html
