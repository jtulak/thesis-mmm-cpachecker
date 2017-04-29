FROM jtulak/myfedora
LABEL description="Fedora-based container with CPA Checker."

RUN dnf install -y bzip2 java-1.8.0-openjdk

ADD cpachecker.tar.bz2 /cpachecker

workdir /workdir
volume /workdir

ADD run-test.sh /
ENTRYPOINT ["/bin/bash","/run-test.sh", "/workdir"]
