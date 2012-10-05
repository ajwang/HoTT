# Makefile.in generated by automake 1.12.4 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2012 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.





am__make_dryrun = \
  { \
    am__dry=no; \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        echo 'am--echo: ; @echo "AM"  OK' | $(MAKE) -f - 2>/dev/null \
          | grep '^AM OK$$' >/dev/null || am__dry=yes;; \
      *) \
        for am__flg in $$MAKEFLAGS; do \
          case $$am__flg in \
            *=*|--*) ;; \
            *n*) am__dry=yes; break;; \
          esac; \
        done;; \
    esac; \
    test $$am__dry = yes; \
  }
pkgdatadir = $(datadir)/hott
pkgincludedir = $(includedir)/hott
pkglibdir = $(libdir)/hott
pkglibexecdir = $(libexecdir)/hott
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
bin_PROGRAMS =
DIST_COMMON = $(am__configure_deps) $(srcdir)/.depend \
	$(srcdir)/Makefile.am $(srcdir)/Makefile.in \
	$(top_srcdir)/configure $(top_srcdir)/etc/hoqtop.in \
	$(top_srcdir)/etc/install-sh $(top_srcdir)/etc/missing \
	etc/install-sh etc/missing
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/etc/coq.m4 \
	$(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(install_sh) -d
CONFIG_CLEAN_FILES = hoqtop
CONFIG_CLEAN_VPATH_FILES =
am__installdirs = "$(DESTDIR)$(bindir)" "$(DESTDIR)$(hottdir)"
PROGRAMS = $(bin_PROGRAMS)
depcomp =
am__depfiles_maybe =
SOURCES =
DIST_SOURCES =
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
am__strip_dir = f=`echo $$p | sed -e 's|^.*/||'`;
am__install_max = 40
am__nobase_strip_setup = \
  srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*|]/\\\\&/g'`
am__nobase_strip = \
  for p in $$list; do echo "$$p"; done | sed -e "s|$$srcdirstrip/||"
am__nobase_list = $(am__nobase_strip_setup); \
  for p in $$list; do echo "$$p $$p"; done | \
  sed "s| $$srcdirstrip/| |;"' / .*\//!s/ .*/ ./; s,\( .*\)/[^/]*$$,\1,' | \
  $(AWK) 'BEGIN { files["."] = "" } { files[$$2] = files[$$2] " " $$1; \
    if (++n[$$2] == $(am__install_max)) \
      { print $$2, files[$$2]; n[$$2] = 0; files[$$2] = "" } } \
    END { for (dir in files) print dir, files[dir] }'
am__base_list = \
  sed '$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;s/\n/ /g' | \
  sed '$$!N;$$!N;$$!N;$$!N;s/\n/ /g'
am__uninstall_files_from_dir = { \
  test -z "$$files" \
    || { test ! -d "$$dir" && test ! -f "$$dir" && test ! -r "$$dir"; } \
    || { echo " ( cd '$$dir' && rm -f" $$files ")"; \
         $(am__cd) "$$dir" && rm -f $$files; }; \
  }
DATA = $(hott_DATA)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  if test -d "$(distdir)"; then \
    find "$(distdir)" -type d ! -perm -200 -exec chmod u+w {} ';' \
      && rm -rf "$(distdir)" \
      || { sleep 5 && rm -rf "$(distdir)"; }; \
  else :; fi
am__post_remove_distdir = $(am__remove_distdir)
DIST_ARCHIVES = $(distdir).tar.gz
GZIP_ENV = --best
DIST_TARGETS = dist-gzip
distuninstallcheck_listfiles = find . -type f -print
am__distuninstallcheck_listfiles = $(distuninstallcheck_listfiles) \
  | sed 's|^\./|$(prefix)/|' | grep -v '$(infodir)/dir$$'
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /Users/andrej/Documents/project/homotopy/HoTT/etc/missing --run aclocal-1.12
AMTAR = $${TAR-tar}
AUTOCONF = ${SHELL} /Users/andrej/Documents/project/homotopy/HoTT/etc/missing --run autoconf
AUTOHEADER = ${SHELL} /Users/andrej/Documents/project/homotopy/HoTT/etc/missing --run autoheader
AUTOMAKE = ${SHELL} /Users/andrej/Documents/project/homotopy/HoTT/etc/missing --run automake-1.12
AWK = awk
COQC = ../coq/bin/coqc
COQCVERSION = trunk
COQDEP = /usr/local/bin/coqdep
COQDOC = /usr/local/bin/coqdoc
COQLIB = /Users/andrej/Documents/project/homotopy/coq
COQTOP = ../coq/bin/coqtop
COQVERSION = trunk
CYGPATH_W = echo
DEFS = -DPACKAGE_NAME=\"hott\" -DPACKAGE_TARNAME=\"hott\" -DPACKAGE_VERSION=\"1.0\" -DPACKAGE_STRING=\"hott\ 1.0\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DPACKAGE=\"hott\" -DVERSION=\"1.0\"
ECHO_C = \c
ECHO_N = 
ECHO_T = 
INSTALL = /opt/local/bin/ginstall -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LIBOBJS = 
LIBS = 
LTLIBOBJS = 
MAINT = #
MAKEINFO = ${SHELL} /Users/andrej/Documents/project/homotopy/HoTT/etc/missing --run makeinfo
MKDIR_P = /opt/local/bin/gmkdir -p
PACKAGE = hott
PACKAGE_BUGREPORT = 
PACKAGE_NAME = hott
PACKAGE_STRING = hott 1.0
PACKAGE_TARNAME = hott
PACKAGE_URL = 
PACKAGE_VERSION = 1.0
PATH_SEPARATOR = :
SET_MAKE = 
SHELL = /bin/sh
STRIP = 
VERSION = 1.0
abs_builddir = /Users/andrej/Documents/project/homotopy/HoTT
abs_srcdir = /Users/andrej/Documents/project/homotopy/HoTT
abs_top_builddir = /Users/andrej/Documents/project/homotopy/HoTT
abs_top_srcdir = /Users/andrej/Documents/project/homotopy/HoTT
am__leading_dot = .
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
bindir = ${exec_prefix}/bin
build_alias = 
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host_alias = 
hottdir = $(datarootdir)/hott
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /Users/andrej/Documents/project/homotopy/HoTT/etc/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target_alias = 
top_build_prefix = 
top_builddir = .
top_srcdir = .
ACLOCAL_AMFLAGS = -I etc
hott_SOURCES = 
hott_DATA = 
EXTRA_DIST = bin coq theories etc LICENSE.txt CREDITS.txt INSTALL.txt README.markdown

# Location of the replacement of Coq standard library.
NEWCOQLIB := $(srcdir)/coq

# What to pass to coqtop to compile theories
COQTOPARGS := -boot -coqlib $(COQLIB) -R theories Coq -relevant-equality -warn-universe-inconsistency -compile

# The list of files that comprise the library in the order in which
VFILES = $(shell find theories -name "*.v")
VOFILES := $(VFILES:.v=.vo)
GLOBFILES := $(VFILES:.v=.glob)
all: all-am

.SUFFIXES:
am--refresh: Makefile
	@:
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am $(srcdir)/.depend $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --foreign --ignore-deps'; \
	      $(am__cd) $(srcdir) && $(AUTOMAKE) --foreign --ignore-deps \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --foreign --ignore-deps Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --foreign --ignore-deps Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;
$(srcdir)/.depend:

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure: # $(am__configure_deps)
	$(am__cd) $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	$(am__cd) $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)
$(am__aclocal_m4_deps):
hoqtop: $(top_builddir)/config.status $(top_srcdir)/etc/hoqtop.in
	cd $(top_builddir) && $(SHELL) ./config.status $@
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	if test -n "$$list"; then \
	  echo " $(MKDIR_P) '$(DESTDIR)$(bindir)'"; \
	  $(MKDIR_P) "$(DESTDIR)$(bindir)" || exit 1; \
	fi; \
	for p in $$list; do echo "$$p $$p"; done | \
	sed 's/$(EXEEXT)$$//' | \
	while read p p1; do if test -f $$p; \
	  then echo "$$p"; echo "$$p"; else :; fi; \
	done | \
	sed -e 'p;s,.*/,,;n;h' -e 's|.*|.|' \
	    -e 'p;x;s,.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/' | \
	sed 'N;N;N;s,\n, ,g' | \
	$(AWK) 'BEGIN { files["."] = ""; dirs["."] = 1 } \
	  { d=$$3; if (dirs[d] != 1) { print "d", d; dirs[d] = 1 } \
	    if ($$2 == $$4) files[d] = files[d] " " $$1; \
	    else { print "f", $$3 "/" $$4, $$1; } } \
	  END { for (d in files) print "f", d, files[d] }' | \
	while read type dir files; do \
	    if test "$$dir" = .; then dir=; else dir=/$$dir; fi; \
	    test -z "$$files" || { \
	      echo " $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$files '$(DESTDIR)$(bindir)$$dir'"; \
	      $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$files "$(DESTDIR)$(bindir)$$dir" || exit $$?; \
	    } \
	; done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	files=`for p in $$list; do echo "$$p"; done | \
	  sed -e 'h;s,^.*/,,;s/$(EXEEXT)$$//;$(transform)' \
	      -e 's/$$/$(EXEEXT)/' `; \
	test -n "$$list" || exit 0; \
	echo " ( cd '$(DESTDIR)$(bindir)' && rm -f" $$files ")"; \
	cd "$(DESTDIR)$(bindir)" && rm -f $$files

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
install-hottDATA: $(hott_DATA)
	@$(NORMAL_INSTALL)
	@list='$(hott_DATA)'; test -n "$(hottdir)" || list=; \
	if test -n "$$list"; then \
	  echo " $(MKDIR_P) '$(DESTDIR)$(hottdir)'"; \
	  $(MKDIR_P) "$(DESTDIR)$(hottdir)" || exit 1; \
	fi; \
	for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; \
	done | $(am__base_list) | \
	while read files; do \
	  echo " $(INSTALL_DATA) $$files '$(DESTDIR)$(hottdir)'"; \
	  $(INSTALL_DATA) $$files "$(DESTDIR)$(hottdir)" || exit $$?; \
	done

uninstall-hottDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(hott_DATA)'; test -n "$(hottdir)" || list=; \
	files=`for p in $$list; do echo $$p; done | sed -e 's|^.*/||'`; \
	dir='$(DESTDIR)$(hottdir)'; $(am__uninstall_files_from_dir)
tags: TAGS
TAGS:

ctags: CTAGS
CTAGS:

cscope cscopelist:


distdir: $(DISTFILES)
	$(am__remove_distdir)
	test -d "$(distdir)" || mkdir "$(distdir)"
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
	-test -n "$(am__skip_mode_fix)" \
	|| find "$(distdir)" -type d ! -perm -755 \
		-exec chmod u+rwx,go+rx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r "$(distdir)"
dist-gzip: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__post_remove_distdir)

dist-bzip2: distdir
	tardir=$(distdir) && $(am__tar) | BZIP2=$${BZIP2--9} bzip2 -c >$(distdir).tar.bz2
	$(am__post_remove_distdir)

dist-lzip: distdir
	tardir=$(distdir) && $(am__tar) | lzip -c $${LZIP_OPT--9} >$(distdir).tar.lz
	$(am__post_remove_distdir)

dist-xz: distdir
	tardir=$(distdir) && $(am__tar) | XZ_OPT=$${XZ_OPT--e} xz -c >$(distdir).tar.xz
	$(am__post_remove_distdir)

dist-tarZ: distdir
	tardir=$(distdir) && $(am__tar) | compress -c >$(distdir).tar.Z
	$(am__post_remove_distdir)

dist-shar: distdir
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__post_remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__post_remove_distdir)

dist dist-all:
	$(MAKE) $(AM_MAKEFLAGS) $(DIST_TARGETS) am__post_remove_distdir='@:'
	$(am__post_remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gzip -dc $(distdir).tar.gz | $(am__untar) ;;\
	*.tar.bz2*) \
	  bzip2 -dc $(distdir).tar.bz2 | $(am__untar) ;;\
	*.tar.lz*) \
	  lzip -dc $(distdir).tar.lz | $(am__untar) ;;\
	*.tar.xz*) \
	  xz -dc $(distdir).tar.xz | $(am__untar) ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(am__untar) ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gzip -dc $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir)
	chmod u+w $(distdir)
	mkdir $(distdir)/_build $(distdir)/_inst
	chmod a-w $(distdir)
	test -d $(distdir)/_build || exit 0; \
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && am__cwd=`pwd` \
	  && $(am__cd) $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(AM_DISTCHECK_CONFIGURE_FLAGS) \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck \
	  && cd "$$am__cwd" \
	  || exit 1
	$(am__post_remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@test -n '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: trying to run $@ with an empty' \
	       '$$(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	$(am__cd) '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: cannot chdir into $(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	test `$(am__distuninstallcheck_listfiles) | wc -l` -eq 0 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-am
all-am: Makefile $(PROGRAMS) $(DATA)
installdirs:
	for dir in "$(DESTDIR)$(bindir)" "$(DESTDIR)$(hottdir)"; do \
	  test -z "$$dir" || $(MKDIR_P) "$$dir"; \
	done
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean-am: clean-binPROGRAMS clean-generic mostlyclean-am

distclean: distclean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -f Makefile
distclean-am: clean-am distclean-generic

dvi: dvi-am

dvi-am:

html-am:

info: info-am

info-am:

install-data-am: install-hottDATA

install-dvi: install-dvi-am

install-dvi-am:

install-exec-am: install-binPROGRAMS

install-html: install-html-am

install-html-am:

install-info: install-info-am

install-info-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

install-ps: install-ps-am

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic

pdf-am:

ps: ps-am

ps-am:

uninstall-am: uninstall-binPROGRAMS uninstall-hottDATA

.MAKE: install-am install-strip

.PHONY: all all-am am--refresh check check-am clean clean-binPROGRAMS \
	clean-generic dist dist-all dist-bzip2 dist-gzip dist-lzip \
	dist-shar dist-tarZ dist-xz dist-zip distcheck distclean \
	distclean-generic distcleancheck distdir distuninstallcheck \
	dvi dvi-am html html-am info info-am install install-am \
	install-binPROGRAMS install-data install-data-am install-dvi \
	install-dvi-am install-exec install-exec-am install-hottDATA \
	install-html install-html-am install-info install-info-am \
	install-man install-pdf install-pdf-am install-ps \
	install-ps-am install-strip installcheck installcheck-am \
	installdirs maintainer-clean maintainer-clean-generic \
	mostlyclean mostlyclean-generic pdf pdf-am ps ps-am uninstall \
	uninstall-am uninstall-binPROGRAMS uninstall-hottDATA


.PHONY: all .depend html latex pdf doc hoq

all: hoq .depend $(VOFILES) # doc

clean:
	rm -f $(NEWCOQLIB)/plugins $(NEWCOQLIB)/dev
	echo WOULD REMOVE /bin/rm -f doc/html/* doc/latex/* `find $(srcdir)/theories -name "*.{vo,glob}"`

doc: html pdf

html: $(GLOBFILES)
	/bin/mkdir -p doc/html
	$(COQDOC) --html --toc --utf8 --charset utf8 --interpolate -d doc/html $(VFILES)
	/bin/cp -f homotopy.css doc/html/coqdoc.css
	echo +++++;\
	echo +++++ HMTL documentation doc/html was generated successfully;\
	echo +++++

latex: $(GLOBFILES)
	/bin/mkdir -p doc/latex
	$(COQDOC) --latex --toc --utf8 --charset utf8 --interpolate -o doc/latex/UnivalentFoundations.tex $(VFILES)
	if [ ! -f doc/latex/coqdoc.sty ] ; then echo coqdoc.sty not found, using my own; cp coqdoc.sty doc/latex; fi

pdf: latex
	if [ -x "`which latexmk`" ]; \
	then \
		echo Good, you have latexmk; \
		cd doc/latex; \
		latexmk -pdf UnivalentFoundations.tex; \
	else \
		echo Using pdflatex to generated PDF; \
		cd doc/latex; \
		pdflatex UnivalentFoundations.tex; \
		pdflatex UnivalentFoundations.tex; \
	fi
	echo +++++;\
	echo +++++ PDF document doc/latex/UnivalentFoundations.pdf was generated successfully;\
	echo +++++

.depend:
	$(COQDEP) -I theories $(VFILES) > .depend

hoq:
	rm -f $(NEWCOQLIB)/dev $(NEWCOQLIB)/plugins
	ln -s $(COQLIB)/dev $(COQLIB)/plugins $(NEWCOQLIB)
	chmod +x hoqtop

%.vo %.glob: %.v
	$(COQTOP) $(COQTOPARGS) $<
theories/Contractible.vo theories/Contractible.glob theories/Contractible.v.beautified: theories/Contractible.v theories/Paths.vo theories/Fibrations.vo
theories/Equivalences.vo theories/Equivalences.glob theories/Equivalences.v.beautified: theories/Equivalences.v theories/Paths.vo theories/Fibrations.vo theories/Contractible.vo
theories/ExtensionalityAxiom.vo theories/ExtensionalityAxiom.glob theories/ExtensionalityAxiom.v.beautified: theories/ExtensionalityAxiom.v theories/Funext.vo
theories/FiberEquivalences.vo theories/FiberEquivalences.glob theories/FiberEquivalences.v.beautified: theories/FiberEquivalences.v theories/Fibrations.vo theories/Equivalences.vo
theories/FiberSequences.vo theories/FiberSequences.glob theories/FiberSequences.v.beautified: theories/FiberSequences.v theories/Equivalences.vo theories/UsefulEquivalences.vo theories/FiberEquivalences.vo
theories/Fibrations.vo theories/Fibrations.glob theories/Fibrations.v.beautified: theories/Fibrations.v theories/Paths.vo
theories/Funext.vo theories/Funext.glob theories/Funext.v.beautified: theories/Funext.v theories/Fibrations.vo theories/Contractible.vo theories/Equivalences.vo theories/UsefulEquivalences.vo theories/FiberEquivalences.vo
theories/FunextEquivalences.vo theories/FunextEquivalences.glob theories/FunextEquivalences.v.beautified: theories/FunextEquivalences.v theories/Paths.vo theories/Equivalences.vo theories/UsefulEquivalences.vo theories/Funext.vo theories/HLevel.vo theories/ExtensionalityAxiom.vo
theories/HLevel.vo theories/HLevel.glob theories/HLevel.v.beautified: theories/HLevel.v theories/Paths.vo theories/Fibrations.vo theories/Contractible.vo theories/Equivalences.vo theories/Funext.vo theories/ExtensionalityAxiom.vo
theories/Homotopy.vo theories/Homotopy.glob theories/Homotopy.v.beautified: theories/Homotopy.v theories/Paths.vo theories/Fibrations.vo theories/Contractible.vo theories/Equivalences.vo theories/UsefulEquivalences.vo theories/FiberEquivalences.vo theories/FiberSequences.vo theories/Funext.vo theories/Univalence.vo theories/UnivalenceAxiom.vo theories/FunextEquivalences.vo theories/HLevel.vo
theories/Paths.vo theories/Paths.glob theories/Paths.v.beautified: theories/Paths.v
theories/Univalence.vo theories/Univalence.glob theories/Univalence.v.beautified: theories/Univalence.v theories/Paths.vo theories/Fibrations.vo theories/Contractible.vo theories/Equivalences.vo
theories/UnivalenceAxiom.vo theories/UnivalenceAxiom.glob theories/UnivalenceAxiom.v.beautified: theories/UnivalenceAxiom.v theories/Paths.vo theories/Univalence.vo theories/Funext.vo
theories/UnivalenceImpliesFunext.vo theories/UnivalenceImpliesFunext.glob theories/UnivalenceImpliesFunext.v.beautified: theories/UnivalenceImpliesFunext.v theories/Paths.vo theories/Fibrations.vo theories/Contractible.vo theories/Equivalences.vo theories/Univalence.vo theories/Funext.vo
theories/UsefulEquivalences.vo theories/UsefulEquivalences.glob theories/UsefulEquivalences.v.beautified: theories/UsefulEquivalences.v theories/Paths.vo theories/Fibrations.vo theories/Contractible.vo theories/Equivalences.vo

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
