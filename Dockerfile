FROM centos:centos7
COPY public/blue/index.html public/index.html
COPY public/blue/script.js public/script.js
COPY public/blue/style.css public/style.css
COPY guestbook /usr/local/bin/guestbook
CMD ["/usr/local/bin/guestbook"]
EXPOSE 80