FROM jtulak/myfedora
LABEL description="Fedora-based container with CPA Checker."

RUN dnf install -y \
           bzip2 \
           java-1.8.0-openjdk \
           libaio-devel \
           libuuid-devel \
           libattr-devel \
           libacl-devel \
           gettext \
           libblkid-devel \
           bc \
           csbuild

ADD cpachecker.tar.bz2 /cpachecker

workdir /workdir
volume /workdir

ADD run-test.sh /
ENTRYPOINT ["/bin/bash","/run-test.sh"]
