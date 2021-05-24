FROM centos:centos7
COPY ./public/index.html public/index.html
COPY ./public/script.js public/script.js
COPY ./public/style.css public/style.css
COPY guestbook /usr/local/bin/guestbook
CMD ["/usr/local/bin/guestbook"]
EXPOSE 80