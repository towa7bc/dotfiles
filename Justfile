[group('System')]
clean-all:
	#!/usr/bin/bash
	podman image prune -af
	podman volume prune -f
	flatpak remove --unused
	rpm-ostree cleanup -bm
	brew autoremove
	brew cleanup
