all: _gokrazy/extrafiles_arm64.tar

_gokrazy/extrafiles_arm64.tar:
	mkdir -p _gokrazy/extrafiles_arm64/usr/local/bin
	curl -fsSL "https://github.com/inlets/inlets-pro/releases/download/0.9.21/inlets-pro-arm64" --output _gokrazy/extrafiles_arm64/usr/local/bin/inlets-pro
	chmod +x _gokrazy/extrafiles_arm64/usr/local/bin/inlets-pro
	cd _gokrazy/extrafiles_arm64 && \
		tar cf ../extrafiles_arm64.tar *
	rm -rf _gokrazy/extrafiles_arm64

clean:
	rm -f _gokrazy/extrafiles_*.tar