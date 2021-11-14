FROM amazonlinux

RUN yum -y update
RUN yum install -y gcc-c++ make 
RUN yum install curl
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash - 
RUN yum -y update
RUN yum install -y nodejs

COPY ./app.js /

CMD ["/usr/bin/node","app.js"]

EXPOSE 80