# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

# Required.
# Sets the name of the package. This will be used in along with `pkg_origin`,
# and `pkg_version` to define the fully-qualified package name, which determines
# where the package is installed to on disk, how it is referred to in package
# metadata, and so on.
pkg_name=planet-haproxy

# Required unless overridden by the `HAB_ORIGIN` environment variable.
# The origin is used to denote a particular upstream of a package.
pkg_origin=smacfarlane

# Required.
# Sets the version of the package.
pkg_version=0.0.1

# Required.
# A URL that specifies where to download the source from. Any valid wget url
# will work. Typically, the relative path for the URL is partially constructed
# from the pkg_name and pkg_version values; however, this convention is not
# required.
pkg_source=WRAPPER

# Required if a valid URL is provided for pkg_source or unless do_verify() is overridden.
# The value for pkg_shasum is a sha-256 sum of the downloaded pkg_source. If you
# do not have the checksum, you can easily generate it by downloading the source
# and using the sha256sum or gsha256sum tools. Also, if you do not have
# do_verify() overridden, and you do not have the correct sha-256 sum, then the
# expected value will be shown in the build output of your package.
pkg_shasum=TODO

# Optional.
# The name and email address of the package maintainer.
# pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"

# Required for core plans, optional otherwise.
# A short description of the package. It can be a simple string, or you can
# create a multi-line description using markdown to provide a rich description
# of your package.
# pkg_description="Some description."

# Optional.
# An array of valid software licenses that relate to this package.
# Please choose a license from http://spdx.org/licenses/
# pkg_license=('Apache-2.0')

# Optional.
# An array of paths, relative to the final install of the software, where
# binaries can be found. Used to populate PATH for software that depends on
# your package.
# pkg_bin_dirs=(bin)

# Optional.
# An array of the package dependencies needed only at build time.
# pkg_build_deps=(core/make core/gcc)

# Optional.
# An array of package dependencies needed at runtime. You can refer to packages
# at three levels of specificity: `origin/package`, `origin/package/version`, or
# `origin/package/version/release`.
pkg_deps=(core/haproxy)

pkg_svc_user="root"

pkg_expose=(80 443 9000 9001)
pkg_binds=(
  [backend]="port ip"
)

pkg_svc_run="haproxy -f ${pkg_svc_config_path}/haproxy.conf -db"

do_download() {
  return 0
}

do_unpack() {
  return 0
}

do_verify() {
  return 0
}

do_build() {
  openssl req -newkey rsa:2048 -nodes -keyout pe.key \
    -out pe.csr -x509 -days 365 \
    -subj "/C=US/ST=Washington/L=Seattle/O=Planet Express/CN=planet.express"
  cat pe.key pe.csr > pe.pem 
}

do_install() {
  mkdir -p "${pkg_prefix}/ssl" 
  cp -a pe.key pe.csr pe.pem "${pkg_prefix}/ssl"
}
