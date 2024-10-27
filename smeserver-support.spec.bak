# $Id: smeserver-support.spec,v 1.25 2021/04/20 02:56:24 jpp Exp $
%define copykooz 2013 - 2021
Summary: SME Server module to display support and licensing information
%define name smeserver-support
Name: %{name}
%define version 11.0.0
%define release 4

Version: %{version}
Release: %{release}%{?dist}
License: GPL
Group: Networking/Daemons
Source: %{name}-%{version}.tar.xz

BuildRoot: /var/tmp/%{name}-%{version}-%{release}-buildroot
BuildRequires: smeserver-devtools >= 1.7.5
BuildArchitectures: noarch
Provides: server-manager-images
AutoReqProv: no

# SME 10 requires these explicitly
Requires: perl(LWP::Protocol::https)

# New features that we want to pull in on upgrades
Requires: screen
Requires: smeserver-yum
Requires: smeserver-clamav
Requires: smeserver-spamassassin
Requires: smeserver-audittools
Requires: smeserver-formmagick >= 1.4.0-9

# These packages weren't in 5.x, or were split from e-smith-base since then
Requires: smeserver-domains
Requires: smeserver-ibays
Requires: smeserver-nutUPS
Requires: smeserver-portforwarding
Obsoletes: e-smith-starterwebsite

# 5.x used bind for name resolution - we need to pull in djbdns
Requires: smeserver-dnscache
Requires: smeserver-tinydns

Requires: smeserver-samba

# Pull in locales so we have a smooth language upgrade [SF: 1309520]
Requires: smeserver-locale-bg
Requires: smeserver-locale-da
Requires: smeserver-locale-de
Requires: smeserver-locale-el
Requires: smeserver-locale-es
Requires: smeserver-locale-et
Requires: smeserver-locale-fr
Requires: smeserver-locale-he
Requires: smeserver-locale-hu
Requires: smeserver-locale-id
Requires: smeserver-locale-it
Requires: smeserver-locale-ja
Requires: smeserver-locale-nb
Requires: smeserver-locale-nl
Requires: smeserver-locale-pl
Requires: smeserver-locale-pt
Requires: smeserver-locale-pt_BR
Requires: smeserver-locale-ro
Requires: smeserver-locale-ru
Requires: smeserver-locale-sl
Requires: smeserver-locale-sv
Requires: smeserver-locale-th
Requires: smeserver-locale-tr
Requires: smeserver-locale-zh_CN
Requires: smeserver-locale-zh_TW

# This block used to be in the SMEServer RPM. Many are probably 
# redundant or should be elsewhere or removed
# [SF: 1356225]
Requires: attr
Requires: audit
Requires: dos2unix
Requires: unix2dos
Requires: dstat
Requires: dvd+rw-tools
Requires: elinks
Requires: htop
Requires: mkisofs
Requires: mtr
Requires: nano
Requires: nc
Requires: mc
Requires: psacct

%changelog
* Wed Mar 27 2024 Jean-Philippe Pialasse <jpp@koozali.org> 11.0.0-4.sme
- removing yum_repositories related elements [SME: 12558]

* Sat Mar 23 2024 Jean-Philippe Pialasse <jpp@koozali.org> 11.0.0-3.sme
- drop dmraid support [SME: 12522]
- drop prelink support [SME: 12523]

* Sat Mar 23 2024 Brian Read <brianr@koozali.org>11.0.0-2.sme
- Change Requires: e-smith- to Requires:smeserver-

* Sat Mar 23 2024 Brian Read <brianr@koozali.org>11.0.0-1.sme
- Update Release and Version to base version and 1st release for SME11 [SME: 12518]

* Mon Jul 10 2023 cvs2git.sh aka Brian Read <brianr@koozali.org> 2.8.0-21.sme
- Roll up patches and move to git repo [SME: 12338]

* Mon Jul 10 2023 BogusDateBot
- Eliminated rpmbuild "bogus date" warnings due to inconsistent weekday,
  by assuming the date is correct and changing the weekday.

* Mon Apr 19 2021 Jean-Philippe Pialasse <tests@pialasse.com> 2.8.0-20.sme
- fix copyright date and make it easier to update from spec file [SME: 11568]

* Wed Apr 07 2021 Jean-Philippe Pialasse <tests@pialasse.com> 2.8.0-19.sme
- fix typo and wording [SME: 11535]

* Fri Jan 08 2021 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-18.sme
- add update event [SME: 11167]

* Thu Nov 26 2020 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-17.sme
- revert update of samba using upstream CentOS repo [SME: 11196]

* Thu May 21 2020 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-16.sme
- obsoletes e-smith-starterwebsite [SME: 8903]

* Wed May 02 2018 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-15.sme
- exclude libtevent,python-tevent from base and updates to avoid conflict with localy build version of samba [SME: 10573]

* Sat Feb 10 2018 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-14.sme
- add back perl(LWP::Protocol::https) support  [SME: 10516]

* Mon Sep 25 2017 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-13.sme
- upstream samba packages were not all excluded [SME: 10428]

* Mon Mar 20 2017 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-12.sme
- exclude samba from centos repo as we have our own with DC support [SME: 10155]

* Fri Mar 03 2017 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-11.sme
- improving link to donation [SME: 9598]

* Tue Jul 19 2016 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-10.sme
- fix hover color [SME: 9676]

* Tue Jul 19 2016 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-9.sme
- Koozali branding of manager [SME: 9676]
- new images in archive; removed old images from cvs
- updated some css smeserver-support-2.8.0-koozali_manager.patch

* Wed Jun 15 2016 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-8.sme
- reverting partly the changes in last patch [SME: 9598]
- wrong catch of proxy related url with the http to https changes
- thank to Charlie Brady for reporting
- Eliminated rpmbuild "bogus date" warnings due to inconsistent weekday,
  by assuming the date is correct and changing the weekday.
  Fri Oct 24 2005 --> Fri Oct 21 2005 or Mon Oct 24 2005 or Fri Oct 28 2005 or ....
  Sat Oct 25 2005 --> Sat Oct 22 2005 or Tue Oct 25 2005 or Sat Oct 29 2005 or ....
  Sat Dec 25 2005 --> Sat Dec 24 2005 or Sun Dec 25 2005 or Sat Dec 31 2005 or ....
  Thu May 23 2006 --> Thu May 18 2006 or Tue May 23 2006 or Thu May 25 2006 or ....
  Sat Mar 07 2008 --> Sat Mar 01 2008 or Fri Mar 07 2008 or Sat Mar 08 2008 or ....
  Sat Feb 03 2013 --> Sat Feb 02 2013 or Sun Feb 03 2013 or Sat Feb 09 2013 or ....

* Wed Jun 15 2016 Jean-Philipe Pialasse <tests@pialasse.com> 2.8.0-7.sme
- update links to koozali.org [SME: 9598]

* Tue Jun 14 2016 stephane de Labrusse <stephdl@de-labrusse.fr> 2.8.0-6.sme
- Template of os-release [SME: 9580]

* Thu May 12 2016 Daniel Berteaud <daniel@firewall-services.com> 2.8.0-5.sme
- Rebuild for [SME: 9393]

* Mon Apr 11 2016 Daniel Berteaud <daniel@firewall-services.com> 2.8.0-4.sme
- Remove smolt service link and service entry [SME: 9420]

* Mon Mar 14 2016 Daniel Berteaud <daniel@firewall-services.com> 2.8.0-3.sme
- Don't require smolt anymore [SME: 9287]

* Thu Mar 3 2016 Daniel Berteaud <daniel@firewall-services.com> 2.8.0-2.sme
- Update copyright in server-manager footer [SME: 9269]

* Sat Feb 06 2016 stephane de Labrusse <stephdl@de-labrusse.fr> 2.8.0-1.sme
- Initial release to sme10

* Wed Jan 20 2016 Daniel Berteaud <daniel@firewall-services.com> 2.6.0-6.sme
- Don't put motd content in /etc/redhat-release [SME: 9161]

* Fri Sep 25 2015 stephane de Labrusse <stephdl@de-labrusse.fr> 2.6.0-5.sme
- created a template for /etc/system-release [SME: 8939]
- Added smeserver-support-2.6.0.bz8939.system-release-template.patch

* Thu Jun 25 2015 stephane de Labrusse <stephdl@de-labrusse.fr> 2.6.0-4.sme
- added a motd message to increase involvements or donations [SME: 8939]
- Code done by John Crisp <jcrisp@safeandsoundit.co.uk> and 
- Stefano Zamboni <zamboni@mind-at-work.it>

* Sat Nov 1 2014 Daniel Berteaud <daniel@firewall-services.com> 2.6.0-3.sme
- Remove now uneeded obsolete directives [SME: 8400]

* Wed Sep 10 2014 Daniel Berteaud <daniel@firewall-services.com> 2.6.0-2.sme
- Remove openssl from the Exclude list of centos repo [SME: 8530]

* Sun Mar 23 2014 Ian Wells <esmith@wellsi.com> 2.6.0-1.sme
- Roll new stream to remove obsolete images [SME: 7962] 

* Sun Mar 16 2014 Ian Wells <esmith@wellsi.com> 2.4.0-21.sme
- Move support.pl from e-smith-base to smeserver-support [SME: 8264]
- This console license page now uses dialog's textbox.

* Sat Nov 2 2013 Ian Wells <esmith@wellsi.com> 2.4.0-20.sme
- Update footer copyright [SME: 7961]

* Sat Nov 2 2013 Ian Wells <esmith@wellsi.com> 2.4.0-19.sme
- Renew full copyright text, by Greg Zartman [SME: 7942]

* Fri Oct 11 2013 Ian Wells <esmith@wellsi.com> 2.4.0-18.sme
- Renew donation text, by John Crisp [SME: 7896]

* Fri Oct 11 2013 Ian Wells <esmith@wellsi.com> 2.4.0-17.sme
- Add donation graphic, by John Crisp [SME: 7897]

* Sun May 05 2013 Ian Wells <esmith@wellsi.com> 2.4.0-16.sme
- Fix /etc/system-release [SME: 7476]

* Sat Mar 16 2013 Shad L. Lords <slords@mail.com> 2.4.0-15.sme
- Fix libgomp obsoletes to not obsolete el6 version [SME: 7481]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-14.sme
- Hopefully last set of el5 obsoletes [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-13.sme
- Even more el5 package dependencies removed [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-12.sme
- Another el5 package dependency removed [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-11.sme
- Revert perl Bzip2 compress modules [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-10.sme
- Obsolete el5 version of old el5 dependencies [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-9.sme
- Fix Obsolete el5 version of aspell [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-8.sme
- Obsolete el5 version of aspell [SME: 7273]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-7.sme
- Obsolete el5 version of sysklogd [SME: 7413]

* Mon Mar 11 2013 Shad L. Lords <slords@mail.com> 2.4.0-6.sme
- Obsolete el5 version of some pacakges [SME: 7273]

* Fri Feb 8 2013 Shad L. Lords <slords@mail.com> 2.4.0-5.sme
- Remove system-config-keyboard and selinux-policy-targeted so installer builds correctly

* Thu Feb 7 2013 Ian Wells <esmith@wellsi.com> 2.4.0-4.sme
- Obsolete only older php-mcrypt versions <= 5.3 [SME: 7320]

* Sun Feb 03 2013 Shad L. Lords <slords@mail.com> 2.4.0-3.sme
  Sat Feb 03 2013 --> Sat Feb 02 2013 or Sun Feb 03 2013 or Sat Feb 09 2013 or ....
- Obsolete python-ctypes so upgrades will work [SME: 7273]

* Sun Feb 03 2013 Shad L. Lords <slords@mail.com> 2.4.0-2.sme
  Sat Feb 03 2013 --> Sat Feb 02 2013 or Sun Feb 03 2013 or Sat Feb 09 2013 or ....
- Obsolete kudzu so upgrades will work [SME: 7273]

* Thu Jan 31 2013 Shad L. Lords <slords@mail.com> 2.4.0-1.sme
- Roll new stream for sme9

* Tue Jan 24 2012 Jonathan Martens <smeserver-contribs@snetram.nl> 2.2.0-21.sme
- Obsolete smeserver-php5-cgi [SME: 6652]

* Thu Jan 19 2012 Jonathan Martens <smeserver-contribs@snetram.nl> 2.2.0-20.sme
- Obsolete php-mcrypt [SME: 6814]

* Wed Sep 28 2011 Jonathan Martens <smeserver-contribs@snetram.nl> 2.2.0-19.sme
- Remove php5 property for ibays [SME: 6652]

* Tue Jul 13 2010 Shad L. Lords <slords@mail.com> - 2.2.0-18.sme
- Add support for Chinese (Taiwan) (zh_TW). [SME: 6106]

* Tue Jun 29 2010 Charlie Brady <charlieb@budge.apana.org.au> 2.2.0-17.sme
- Add Obsoletes for php5-cgi-{imap,ldap,mysql,pear,xmlrpc}. [SME: 6089]

* Mon Jun 28 2010 Charlie Brady <charlieb@budge.apana.org.au> 2.2.0-16.sme
- Add Obsoletes for php5-cgi. [SME: 6089]

* Tue May 25 2010 Shad L. Lords <slords@mail.com> - 2.2.0-15.sme
- Add support for Hebrew (he). [SME: 5971]

* Mon May 17 2010 Shad L. Lords <slords@mail.com> 2.2.0-14.sme
- Add migrate fragment for centos excludes [SME: 5960]

* Mon May 17 2010 Jonathan Martens <smeserver-contribs@snetram.nl> 2.2.0-13.sme
- Reverting previous change [SME: 5962]

* Mon May 17 2010 Jonathan Martens <smeserver-contribs@snetram.nl> 2.2.0-12.sme
- Migrate CentOS Exclude property default values to smeserver-yum [SME: 5962]

* Wed Dec  9 2009 Charlie Brady <charlieb@budge.apana.org.au> 2.2.0-11.sme
- Fix css validation errors. [SME: 5656]

* Tue Oct 27 2009 Shad L. Lords <slords@mail.com> 2.2.0-10.sme
- Add support for Polish (pl). [SME: 5434]
- Add support for Thai (th). [SME: 5466]

* Mon Oct 26 2009 Shad L. Lords <slords@mail.com> 2.2.0-9.sme
- obsoletes fonts-xorg-base to prevent dragging in unneeded
  packages [SME: 5535]

* Mon Oct 26 2009 Shad L. Lords <slords@mail.com> 2.2.0-8.sme
- add VFlib2 to obsoletes list so upgrades work [SME: 5532]

* Mon Aug 03 2009 Gavin Weight <gweight@gmail.com> 2.2.0-7.sme
- Add Obsoletes for kernel modules. [SME: 5386]

* Wed May 27 2009 Shad L. Lords <slords@mail.com> 2.2.0-6.sme
- Add support for Romanian (ro). [SME: 5268]

* Wed May 13 2009 Filippo Carletti <filippo.carletti@gmail.com> 2.2.0-5
- Obsoletes: rkhunter to remove from default install [SME: 5172]

* Wed Apr 29 2009 Gavin Weight <gweight@gmail.com> 2.2.0-4.sme
- Add support for Estonian (et). [SME: 5203]

* Tue Mar 3 2009 Shad L. Lords <slords@mail.com> 2.2.0-3.sme
- Add support for Norwegian Bokmal (nb) [SME: 5002 ]
- Add support for Russian (ru) [SME: 5002]
- Add support for Chinese China (zh_CN) [SME: 5002]

* Mon Oct 13 2008 Shad L. Lords <slords@mail.com> 2.2.0-2.sme
- Add support for Japanese (ja) [SME: 4637]

* Tue Oct 7 2008 Shad L. Lords <slords@mail.com> 2.2.0-1.sme
- Roll new stream to separate sme7/sme8 trees [SME: 4633]

* Tue Oct 7 2008 Shad L. Lords <slords@mail.com> 1.6.0-53
- Update excludes for sme8 [SME: 4507]

* Thu Aug  7 2008 Charlie Brady <charlieb@e-smith.com> 1.6.0-52
- Remove incorrect 'Obsoletes: yum-metadata-parser'. [SME: 4466]

* Sat Jul 26 2008 Shad L. Lords <slords@mail.com> 1.6.0-51
- Add support for Bulgarian (bg) [SME: 4337]
- Re-add support for Portuguese (pt) [SME: 4006]
- Add support for Turkish (tr) [SME: 4443]

* Tue Mar 18 2008 Shad L. Lords <slords@mail.com> 1.6.0-50
- Add gettext to console titles.

* Tue Mar 18 2008 Shad L. Lords <slords@mail.com> 1.6.0-49
- Fix support for Portuguese (pt_BR) [SME: 4006]

* Wed Mar 12 2008 Shad L. Lords <slords@mail.com> 1.6.0-48
- Add support for Hungarian (hu) [SME: 4025]

* Fri Mar 07 2008 Stephen Noble <support@dungog.net> 1.6.0-47
  Sat Mar 07 2008 --> Sat Mar 01 2008 or Fri Mar 07 2008 or Sat Mar 08 2008 or ....
- gettext Internet connection failed [SME: 631]

* Sat Mar 1 2008 Shad L. Lords <slords@mail.com> 1.6.0-46
- Add support for Danish (da) [SME: 4006]
- Add support for Dutch (nl) [SME: 4006]
- Add support for Greek (el) [SME: 4006]
- Add support for Indonesian (id) [SME: 4006]
- Add support for Portuguese (pt) [SME: 4006]
- Add support for Slovenian (sl) [SME: 4006]

* Wed Feb 13 2008 Stephen Noble <support@dungog.net> 1.6.0-45
- Remove <base> tags now in general [SME: 3928]

* Sat Feb 09 2008 Stephen Noble <support@dungog.net> 1.6.0-44
- move support lexicon  [SME: 3878]

* Fri Jan 11 2008 Shad L. Lords <slords@mail.com> 1.6.0-43
- Revert obsoletes check4updates, should be in smeserver-yum [SME: 3250]

* Fri Jan 11 2008 Stephen Noble <support@dungog.net> 1.6.0-42
- Add Obsolete check4updates   [SME: 3250]

* Mon Jan 7 2008 Gavin Weight <gweight@gmail.com> 1.6.0-41
- Remove check4updates requires line. [SME: 3250]

* Fri Sep 7 2007 Shad L. Lords <slords@mail.com> 1.6.0-40
- Update obsoletes for sme8 [SME: 2437]

* Tue Jul 3 2007 Shad L. Lords <slords@mail.com> 1.6.0-39
- Remove yum-metadata-parser under sme8.

* Wed Jun 6 2007 Shad L. Lords <slords@mail.com> 1.6.0-38
- Add smolt service for hardware profiling.

* Wed May 9 2007 Shad L. Lords <slords@mail.com> 1.6.0-37
- Updates to support SME Server 8

* Sun Apr 29 2007 Shad L. Lords <slords@mail.com>
- Clean up spec so package can be built by koji/plague

* Sun Apr 29 2007 Shad L. Lords <slords@mail.com> 1.6.0-36
- Change to dist for tagging release
- Remove ipp2p support. [SME: 38]

* Mon Apr 09 2007 Stephen Noble <support@dungog.net> 1.6.0-35
- Add Obsoletes and Conflicts for old dungog contribs [SME: 1295]

* Sun Feb 18 2007 Shad L. Lords <slords@mail.com> 1.6.0-34
- Add sv locale so language files get pulled in [SME: 911]

* Sun Feb 18 2007 Shad L. Lords <slords@mail.com> 1.6.0-33
- Add ipp2p package (disabled) to block p2p traffic [SME: 38]

* Mon Feb 12 2007 Stephen Noble <support@dungog.net> 1.6.0-32
- Add Obsoletes header to remove smeserver-userpanel <=0.9-9 [SME: 2427]

* Sat Jan 27 2007 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-31
- Change base and updates Exclude definitions to defaults files [SME: 2384]

* Sat Jan 27 2007 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-30
- Fix generation of base and updates Exclude definitions [SME: 2384]

* Fri Jan 05 2007 Shad L. Lords <slords@mail.com> 1.6.0-29
- Add requires for check4updates.  It was split from atrpms.

* Tue Dec 12 2006 Shad L. Lords <slords@mail.com> 1.6.0-28
- Undo ntp obsoletes.  Breaks yum upgrades.

* Thu Dec 07 2006 Shad L. Lords <slords@mail.com>
- Update to new release naming.  No functional changes.
- Make Packager generic

* Sat Dec 02 2006 Shad L. Lords <slords@mail.com> 1.6.0-27
- Obsolete our version of ntp so we pull correct upstream version

* Sat Dec 02 2006 Shad L. Lords <slords@mail.com> 1.6.0-26
- Update requires to reflect new kernel module format

* Wed Nov 22 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-25
- Remove requires for smeserver-qpsmtpds-tnef2mime after merge [SME: 2087]

* Sat Nov 18 2006 Shad L. Lords <slords@mail.com> 1.6.0-24
- Remove CentOS markings from motd, redhat-release to fix
  branding of kernels in grub.conf and startup screens [SME: 1996]

* Tue Nov 14 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-23
- Revert last change - the packages can be removed manually [SME: 2062]

* Tue Nov 14 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-22
- Obsolete samba-3.0.23c-1 and friends [SME: 2062]

* Fri Sep 8 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-21
- Add centos_exclude define and use it to auto-generate Exclude 
  property for CentOS yum repositories [SME: 1849]

* Sun Jul 16 2006 Gavin Weight <gweight@gmail.com> 1.6.0-20
- Changed css style to match logo background. [SME: 1558]

* Fri Jun 30 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-19
- Change donate link to www.smeserver.org/donate/ [SME: 1668]

* Fri Jun 30 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-18
- Change new window target to _blank rather than "new" [SME: 1613]

* Thu Jun 29 2006 Gavin Weight <gweight@gmail.com> 1.6.0-17
- Modified text on server-manager front screen. [SME: 1613]

* Wed Jun 28 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-16
- Expand text on server-manager front screen [SME: 1613]
- Add Copyright 2006 SME Server, Inc to footer

* Fri Jun 9 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-15
- Add GIF format logo [SME: 1558]

* Thu Jun 8 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-14
- Update server-manager logo [SME: 1558]

* Wed May 31 2006 Charlie Brady <charlie_brady@mitel.com> 1.6.0-13
- Escape percent char in crontab template. [SME: 1497]

* Wed May 31 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-12
- Obsolete yum-1.0.3-6.0.7.x.esmith [SME: 1418]

* Wed May 31 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-11
- Updated SME Server logo [SME: 1512]

* Fri May 26 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-10
- Sleep 0..59 seconds when calling statusreport from cron [SME: 1497]

* Tue May 23 2006 Gavin Weight <gweight@gmail.com> 1.6.0-09
- Add Obsoletes for perl-File-MMagic. [SME: 1436]

* Tue May 23 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-08
  Thu May 23 2006 --> Thu May 18 2006 or Tue May 23 2006 or Thu May 25 2006 or ....
- Don't bother printing LWP error [SME: 1314]

* Tue May 23 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-07
  Thu May 23 2006 --> Thu May 18 2006 or Tue May 23 2006 or Thu May 25 2006 or ....
- Add weekly status report. 
- Only the following information is passed in the status report:
  - ReleaseVersion (e.g. 7.0rc2)
  - SystemMode     (e.g. servergateway)
  - SystemIDHash   (Unique id - SHA1 hash of the SystemID)
  - InstallEpoch   (time of system install)
  - CurrentEpoch   (time of this test)
- Refactor testInternet to use new script
- [SME: 1314]

* Wed Apr 19 2006 Charlie Brady <charlie_brady@mitel.com> 1.6.0-06
- Add Obsoletes and Conflicts headers for dungog vdomain contribs.
  [SME: 1283]

* Thu Apr 6 2006 Gavin Weight <gweight@gmail.com> 1.6.0-05
- Changed links to online-manual now at contribs.org . [SME: 1079]

* Wed Apr 5 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-04
- Add dependency on smeserver-audittools [SME: 762]

* Tue Mar 28 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-03
- Bump CentOS release to 4.3 [SME: 1151]

* Tue Mar 28 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-02
- Add Obsoletes for e-smith-loginscript-0.2-2 [SME: 1087]

* Thu Mar 16 2006 Gordon Rowell <gordonr@gormand.com.au> 1.6.0-01
- Roll stable stream version. [SME: 1016]

* Wed Feb 22 2006 Gavin Weight <gweight@gmail.com> 1.4.8-22
- Add obsoletes on amavis-ng and clamav-es, Added conflicts too [SME: 775]

* Mon Feb 20 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-21
- And e-smith-portforwarding [SME: 767]

* Mon Feb 20 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-20
- Add dependencies on e-smith-domains, e-smith-nutUPS and
  e-smith-starterwebsite to simplify 5.x upgrades [SME: 767]
- Obsolete a few more old versions of proftpd with big Epoch tags [SME: 767]

* Wed Feb 15 2006 Charlie Brady <charlie_brady@mitel.com> 1.4.8-19
- Add Obsoletes and Conflicts headers to cause removal of and
  prevent re-installation of the incompatible contrib
  dmc-mitel-mailrules. [SME: 800]

* Tue Feb 14 2006 Charlie Brady <charlie_brady@mitel.com> 1.4.8-18
- Add Conflicts header to prevent reinstallation of e-smith-userpanel.
  [SME: 598,770]

* Mon Feb 13 2006 Charlie Brady <charlieb@e-smith.com> 1.4.8-17
- Add more Obsoletes headers, to assist with upgrade of customised
  servers. [SME: 775]

* Mon Feb 13 2006 Charlie Brady <charlieb@e-smith.com> 1.4.8-16
- Adding dependencies on e-smith-dnscache and e-smith-tinydns, so
  that DNS works after 5.x -> 7 upgrade. [SME: 767]

* Sun Feb 12 2006 Charlie Brady <charlieb@e-smith.com> 1.4.8-15
- Adding dependency on e-smith-ibays, to ensure it is installed
  during 5.x -> 7 upgrade. [SME: 747]

* Fri Feb 10 2006 Gavin Weight <gweight@gmail.com> 1.4.8-14
- Updated online-manual to include links to Sourceforge
  Manual/FAQs/KnownIssues. [SME: 490]

* Thu Feb 9 2006 Gavin Weight <gweight@gmail.com> 1.4.8-13
- Added online-manual. [SME: 407]

* Wed Feb 8 2006 Gavin Weight <gweight@gmail.com> 1.4.8-12
- Additional cleanup of sme_header.css [SME: 408]

* Wed Feb 8 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-11
- Additional cleanup of contribs.org styling by Gavin [SME: 408]

* Tue Feb 7 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-10
- Add comment to each of the contribs.org styling fragments
  so it is easier to find the overrides [SME: 408]

* Tue Feb 7 2006 Gavin Weight <gweight@gmail.com> 1.4.8-09
- Adding contribs css style fragments and removing hack in
  contribs.org styling [SME: 408]

* Sun Feb 05 2006 Gavin Weight <gweight@gmail.com> 1.4.8-08
- Add header to obsolete kernel-module-st. [SME: 647]

* Sat Feb 4 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-07
- Hack in contribs.org styling for CSS files prior to parameterizing
  the templates. Kids: Don't do this at home. RPMs should NOT install
  fragments into templates-custom. [SME: 408]

* Wed Feb 01 2006 Charlie Brady <charlie_brady@mitel.com> 1.4.8-06
- Add header to obsolete e-smith-userpanel. [SME: 598]

* Mon Jan 30 2006 Charlie Brady <charlie_brady@mitel.com> 1.4.8-05
- Add dependencies for spamassassin and clamav frameworks (moved
  from smeserver-qpsmtpd). [SME: 606]

* Thu Jan 12 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-04
- Add screen package [SME: 445]

* Thu Jan 5 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-03
- Adjust initial.cgi to "SME Server" product name [SME: 402]

* Thu Jan 5 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-02
- Add contribs.org logo and change product name to "SME Server" [SME: 402]
- Put $SystemName.$DomainName in manager titlebar

* Thu Jan 5 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.8-01
- Roll patches to 1.4.7-24 and convert some stray DOS format text files
  to Unix format

* Thu Jan 5 2006 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-24
- Modify "Test Internet Access" so that it accesses contribs.org
  and only passes two pieces of information:
  - sysconfig{ReleaseVersion}
  - An SHA1 hash of sysconfig{SystemID} [SME: 402]

* Sun Dec 25 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-23
  Sat Dec 25 2005 --> Sat Dec 24 2005 or Sun Dec 25 2005 or Sat Dec 31 2005 or ....
- Add esmith::console object for standalone menu item [SME: 364]

* Sun Dec 25 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-22
  Sat Dec 25 2005 --> Sat Dec 24 2005 or Sun Dec 25 2005 or Sat Dec 31 2005 or ....
- Move testInternet console menu item to smeserver-support [SME: 364]

* Wed Dec 14 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-21
- Revert last change [SME: 327]

* Wed Dec 14 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-20
- Add Requires: smeserver-sysstat [SME: 327]

* Wed Dec 14 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-19
- Relocate Obsoletes: SMEServer to smeserver-release package [SME: 72]

* Fri Nov 18 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-18
- Expand /etc/motd and friends in post-{install,upgrade} so that
  they are correct for the first boot [SF: 1295403, 1261360]

* Fri Nov 18 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-17
- Obsolete the SMEServer marker package [SF: 1356225]

* Fri Nov 18 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-16
- /etc/issue and /etc/issue.net should be empty by default. We don't
  want to announce version numbers to casual observers [SF: 1261360]

* Fri Nov 18 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-15
- Use the /etc/motd template for /etc/redhat-release [SF: 1295403]

* Wed Nov 16 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-14
- Add templates for /etc/{issue,issue.net,motd}, all generated from
  the /etc/motd template [SF: 1261360]

* Wed Nov 16 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-13
- Add Conflicts: selinux-policy-targeted [SF: 1357548]

* Mon Nov 14 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-12
- Add requires for kernel-smp-module-slip [SF: 1356104]

* Mon Nov 14 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-11
- Removed Requires for php-domxml - now in e-smith-horde [SF: 1313299]

* Mon Oct 31 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-10
- Obsolete e-smith-reinstall-floppy [SF: 1342860]

* Tue Oct 25 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-09
  Sat Oct 25 2005 --> Sat Oct 22 2005 or Tue Oct 25 2005 or Sat Oct 29 2005 or ....
- Add dependency on audit-libs

* Mon Oct 24 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-08
  Fri Oct 24 2005 --> Fri Oct 21 2005 or Mon Oct 24 2005 or Fri Oct 28 2005 or ....
- Remove kenel-module-st - patch is in the CentOS 4.2 kernel

* Mon Oct 17 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-07
- Make symlink to tux in post scriptlet [SF: 1295038]

* Mon Oct 17 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-06
- Add symlink to tux for splash.xpm.gz [SF: 1295038]
- Remove unused language macro definition from SPEC file

* Sat Oct 15 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-05
- And add dependencies for smeserver-locale-{de,es,fr,it} [SF: 1309520]

* Fri Oct 14 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-04
- Move all L10Ns to smeserver-locale [SF: 1309520]

* Mon Oct 10 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-03
- Bump version to force update

* Fri Oct 7 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-02
- Pull in kernel-module-st so flexbackup works [SF: 1254300]
- Pull in kernel-module-slip for dialup support [SF: 1293606]

* Fri Oct 7 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.7-01
- Roll tarball, patches to 1.4.6-02

* Mon Sep 26 2005 Gordon Rowell <gordonr@gormand.com.au> 1.4.6-02
- Added Italian L10N - Thanks Filippo Carletti [SF: 1309266]

* Mon Sep 26 2005 Gordon Rowell <gordonr@gormand.com.au>
- [1.4.6-01]
- Roll patches up to 1.4.5-07
- Added German L10N - Thanks Dietmar Berteld [SF: 1293325]

* Thu Aug 18 2005 Shad L. Lords <slords@mail.com>
- [1.4.5-07]
- More Obsoletes/Requires updates

* Thu Aug 18 2005 Shad L. Lords <slords@mail.com>
- [1.4.5-06]
- Obsoletes/Requires updates for beta1.
  Still lots of work to be done.

* Sat Aug 13 2005 Shad L. Lords <slords@mail.com>
- [1.4.5-05]
- Lots up Obsoletes updates

* Fri Aug 12 2005 Shad L. Lords <slords@mail.com>
- [1.4.5-04]
- Add authconfig, mysql-devel, openldap-clients,
  perl-Crypt-SSLeay, perl-NDBM_File specific and  
  ppp-modules generic obsoletes so they are removed 
  on upgrade.

* Fri Aug 12 2005 Shad L. Lords <slords@mail.com>
- [1.4.5-03]
- Add obsoletes for specific php versions

* Tue Aug 09 2005 Shad L. Lords <slords@mail.com>
- [1.4.5-02]
- Remove Requires and Obsoletes.  Start moving to correct places.

* Mon Jul 18 2005 Gordon Rowell <gordonr@gormand.com.au>
- [1.4.5-01]
- Package renamed to smeserver-support, obsoleting e-smith-support

* Fri Jul 15 2005 Shad L. Lords <slords@mail.com>
- [1.4.4-07sme02]
- Various additional fixes for upgrades

* Thu Jul 14 2005 Shad L. Lords <slords@mail.com>
- [1.4.4-07sme01]
- Various fixes for 6.5RC1 upgrades

* Fri Jul 1 2005 Gordon Rowell <gordonr@gormand.com.au>
* Thu Jul 14 2005 Charlie Brady <charlieb@e-smith.com>
- [1.4.4-07]
- Various updates provided by Shad Lords.

* Fri Jul 1 2005 Gordon Rowell <gordonr@gormand.com.au>
- [1.4.4-06]
- Updated Requires lists for CentOS 4.1 version [SF: 1217914]

* Wed Jun 15 2005 Charlie Brady <charlieb@e-smith.com>
- [1.4.4-05]
- Add full set of Requires: headers, to ensure that an upgrade installs
  a full package set. [SF: 1217914]

* Tue Jun  7 2005 Charlie Brady <charlieb@e-smith.com>
- [1.4.4-04]
- Rationalise manager URLs below server-manager. [SF: 1172203, 1210715]

* Mon May 30 2005 Charlie Brady <charlieb@e-smith.com>
- [1.4.4-03]
- Add "Requires: e-smith-lib" to ensure correct installation ordering.
  [SF: 1210723]

* Thu Feb 24 2005 Charlie Brady <charlieb@e-smith.com>
- [1.4.4-02]
- Updated copyright date on the license text file.

* Thu Jun 12 2003 Gordon Rowell <gordonr@e-smith.com>
- [1.4.4-01]
- Updated product_logo.jpg [gordonr 8507]

* Mon May 12 2003 Gordon Rowell <gordonr@e-smith.com>
- [1.4.3-01]
- Handle "es" language (treat as English) [gordonr 3793]

* Mon Mar 31 2003 Gordon Rowell <gordonr@e-smith.com>
- [1.4.2-08]
- Updated fr lexicon for initial.cgi [gordonr 7728]

* Fri Mar 28 2003 Gordon Rowell <gordonr@e-smith.com>
- [1.4.2-07]
- Moved lexica for {index,initial}.cgi here [gordonr 7728]

* Fri Mar 28 2003 Lijie Deng <lijied@e-smith.com>
- [1.4.2-06]
- Modified French lexicon to use lang="fr", rename the lexicon
  directory to fr [lijied 6787] 

* Tue Mar 25 2003 Mark Knox <markk@e-smith.com>
- [1.4.2-05]
- Renamed 20FooterText to 20ProductName, factored out common text [markk 7715]

* Mon Mar 17 2003 Mark Knox <markk@e-smith.com>
- [1.4.2-04]
- Added header template [markk 4722]
- Added footer template [markk 7714]

* Thu Mar 13 2003 Mark Knox <markk@e-smith.com>
- [1.4.2-03]
- Corrected header image size in 40LogoRow [markk 4722]

* Thu Mar 13 2003 Mark Knox <markk@e-smith.com>
- [1.4.2-02]
- Added 40LogoRow header fragment with correct ALT text and image [markk 4722]

* Thu Mar 13 2003 Mark Knox <markk@e-smith.com>
- [1.4.2-01]
- Added new product_logo.jpg [markk 4722]

* Fri Jan 10 2003 Gordon Rowell <gordonr@e-smith.com>
- [1.4.1-04]
- New URL for www.e-smith.com [gordonr 6227]

* Fri Jan 10 2003 Gordon Rowell <gordonr@e-smith.com>
- [1.4.1-03]
- Adjusted header on license text
  Create fr_CA license on the fly [gordonr 6227]

* Mon Dec 30 2002 Charlie Brady <charlieb@e-smith.com>
- [1.4.1-02]
- Add Obsoletes header to force removal of e-smith-keys. [charlieb 6369]

* Fri Dec 27 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.4.1-01]
- Updated banner image [gordonr 6227]

* Tue Dec 24 2002 Charlie Brady <charlieb@e-smith.com>
- [1.4.0-01]
- Roll stable version to 1.4.0

* Tue Dec 24 2002 Charlie Brady <charlieb@e-smith.com>
- [1.4.0-01-01]
- Roll stable version to 1.4.0-01

* Tue Dec 24 2002 Charlie Brady <charlieb@e-smith.com>
- [1.3.12-02]
- Add Obsoletes head to force removal of e-smith-blades. [charlieb 5416]

* Fri May 24 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.12-01]
- Place lexicon in target directory. Re-add original support CGI script
  [gordonr 3641]

* Thu May 23 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.11-01]
- RPM rebuild forced by cvsroot2rpm

* Tue May 21 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.10-01]
- Move French localisation for support panel here [gordonr 3582]

* Thu May 16 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.9-01]
- Relocated license text for locale awareness [gordonr 3413]

* Wed May 15 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.8-01]
- Missing U.S. English nav bar entry [gordonr 3421]

* Wed May  8 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.7-01]
- Added footer [gordonr 3223]

* Wed May  8 2002 Mark Knox <markk@e-smith.com>
- [1.3.6-01]
- Quickly i18n'd into FormMagick panel. [markk 3309]

* Fri Apr 19 2002 Mark Knox <markk@e-smith.com>
- [1.3.5-01]
- Updated server-manager image [markk 3188]

* Thu Apr 18 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.4-01]
- Removed copy of %Source1 - now in correct place/name

* Thu Apr 18 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.3-01]
- Removed airiness from licence [gordonr 3119]

* Mon Apr 15 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.2-01]
- Re-did createlinks

* Mon Apr 15 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.1-01]
- Initial build from CVS

* Mon Apr 15 2002 Gordon Rowell <gordonr@e-smith.com>
- [1.3.0-01]
- rollRPM: Rolled version number to 1.3.0-01. Includes patches up to 1.2.0-02.

* Mon Jan 07 2002 Charlie Brady <charlieb@e-smith.com>
- [1.2.0-02]
- Add conflicts header to prevent ServiceLink-support and e-smith-support from
  being installed simultaneously.

* Tue Dec 11 2001 Jason Miller <jay@e-smith.com>
- [1.2.0-01]
- rollRPM: Rolled version number to 1.2.0-01. Includes patches up to 1.1.0-06.

* Wed Nov 21 2001 Charlie Brady <charlieb@e-smith.com>
- [1.1.0-06]
- Remove e-smith-lib dependency as well - e-smith-lib requires e-smith-support,
  but not vice-versa.

* Wed Nov 21 2001 Charlie Brady <charlieb@e-smith.com>
- [1.1.0-05]
- Remove troublesome e-smith-base dependency, which isn't real anyway.
- While we are at it, remove the e-smith => 4 dependency - not really relevant
  and forces us to retain the empty e-smith RPM.

* Wed Nov 14 2001 Tony Clayton <tonyc@e-smith.com>
- [1.1.0-04]
- s/March/Mitel/ in license text

* Thu Nov 08 2001 Charlie Brady <charlieb@e-smith.com>
- [1.1.0-03]
- Updated with (YA) new banner image

* Fri Nov 2 2001 Gordon Rowell <gordonr@e-smith.com>
- [1.1.0-02]
- Updated with new banner image

* Fri Nov 2 2001 Gordon Rowell <gordonr@e-smith.com>
- [1.1.0-01]
- Rolled version number to 1.1.0-01. Includes patches upto 1.0.0-03.

* Tue Aug 21 2001 Charlie Brady <charlieb@e-smith.com>
- [1.0.0-03]
- Removed pre-1.0.0 changelog entries.

* Tue Aug 21 2001 Gordon Rowell <gordonr@e-smith.com>
- [1.0.0-02]
- Changed Copyright to GPL and added Vendor tag

* Tue Aug 21 2001 Gordon Rowell <gordonr@e-smith.com>
- [1.0.0-01]
- Rolled version number to 1.0.0-01. Includes patches upto 0.1.1-24.

%description
SME Server module to display support and licensing information

%prep
%setup

%build
perl createlinks

ln -s initial.cgi root/etc/e-smith/locale/en-us/etc/e-smith/web/functions/index.cgi
find root/ -type f | xargs grep -l ____COPYYEARS____ | xargs sed -i -e 's/____COPYYEARS____/%{copykooz}/g'

%install
rm -rf $RPM_BUILD_ROOT
(cd root ; find . -depth -print | cpio -dump $RPM_BUILD_ROOT)
rm -f %{name}-%{version}-%{release}-filelist
/sbin/e-smith/genfilelist $RPM_BUILD_ROOT \
    > %{name}-%{version}-%{release}-filelist

%clean
rm -rf $RPM_BUILD_ROOT

%post

%files -f %{name}-%{version}-%{release}-filelist
%defattr(-,root,root)
