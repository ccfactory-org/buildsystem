FROM debian/eol:squeeze

# refresh package repo
RUN apt-get update -y

# install all dependencies needed commonly by buildsystems
RUN apt-get install -y \
  # compiler collection \
  gcc g++ \
  # extract .bz2 archives \
  bzip2 \
  # build tools \
  make gawk texinfo file m4 patch flex \
  # menuconfigs \
  libncurses5-dev
