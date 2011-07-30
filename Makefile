#
# Copyright (C) 2011 Chris McClelland
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
ROOT      := $(realpath ../..)
DEPS      := error usbwrap buffer
TYPE      := dll
SUBDIRS   := tests fx2loader #firmware
#PRE_BUILD := $(ROOT)/3rd/fx2lib/lib/fx2.lib

-include $(ROOT)/common/top.mk

$(ROOT)/3rd/fx2lib/lib/fx2.lib: $(ROOT)/3rd/fx2lib
	make -C $<
