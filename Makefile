# vim: ts=2 sw=2 sts=2 et :
KONFIG ?= ../konfig
APP    := optimiz
PKG    := gawk neovim tmux

$(KONFIG)/Makefile:
	@test -f $@ || { echo "missing konfig: git clone https://github.com/aiez/konfig $(KONFIG)"; exit 1; }
include $(KONFIG)/Makefile
