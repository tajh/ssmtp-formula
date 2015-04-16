{% from "ssmtp/map.jinja" import ssmtp with context %}

ssmtp:
  pkg.installed:
    - name: {{ ssmtp.server }}
ssmtp.conf:
  file.managed:
    - name: {{ ssmtp.ssmtp_conf }}
    - source: salt://ssmtp/config/ssmtp.tmpl
    - template: jinja
mailer.conf:
  file.managed:
    - name: {{ ssmtp.mailer_conf }}
    - source: salt://ssmtp/config/mailer.tmpl
    - template: jinja
