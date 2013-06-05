mkdir -p /usr/local/portage && cd /usr/local/portage 
git clone this repo there.

add to make.conf PORTDIR_OVERLAY="/usr/local/portage/overlay/"


how to create manifests for ebuilds: 

ebuild /usr/local/portage/overlay/category/foo/foo-2.1.0.47.ebuild manifest

same with digests
