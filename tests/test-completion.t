Show all commands except debug commands
  $ hg debugcomplete
  add
  addremove
  annotate
  archive
  backout
  bisect
  bookmarks
  branch
  branches
  bundle
  cat
  clone
  commit
  config
  copy
  diff
  export
  forget
  graft
  grep
  heads
  help
  identify
  import
  incoming
  init
  locate
  log
  manifest
  merge
  outgoing
  parents
  paths
  phase
  pull
  push
  recover
  remove
  rename
  resolve
  revert
  rollback
  root
  serve
  status
  summary
  tag
  tags
  tip
  unbundle
  update
  verify
  version

Show all commands that start with "a"
  $ hg debugcomplete a
  add
  addremove
  annotate
  archive

Do not show debug commands if there are other candidates
  $ hg debugcomplete d
  diff

Show debug commands if there are no other candidates
  $ hg debugcomplete debug
  debugancestor
  debugbuilddag
  debugbundle
  debugcheckstate
  debugcommands
  debugcomplete
  debugconfig
  debugdag
  debugdata
  debugdate
  debugdirstate
  debugdiscovery
  debugfileset
  debugfsinfo
  debuggetbundle
  debugignore
  debugindex
  debugindexdot
  debuginstall
  debugknown
  debuglabelcomplete
  debugobsolete
  debugpathcomplete
  debugpushkey
  debugpvec
  debugrebuilddirstate
  debugrename
  debugrevlog
  debugrevspec
  debugsetparents
  debugsub
  debugsuccessorssets
  debugwalk
  debugwireargs

Do not show the alias of a debug command if there are other candidates
(this should hide rawcommit)
  $ hg debugcomplete r
  recover
  remove
  rename
  resolve
  revert
  rollback
  root
Show the alias of a debug command if there are no other candidates
  $ hg debugcomplete rawc
  

Show the global options
  $ hg debugcomplete --options | sort
  --config
  --cwd
  --debug
  --debugger
  --encoding
  --encodingmode
  --help
  --hidden
  --noninteractive
  --profile
  --quiet
  --repository
  --time
  --traceback
  --verbose
  --version
  -R
  -h
  -q
  -v
  -y

Show the options for the "serve" command
  $ hg debugcomplete --options serve | sort
  --accesslog
  --address
  --certificate
  --cmdserver
  --config
  --cwd
  --daemon
  --daemon-pipefds
  --debug
  --debugger
  --encoding
  --encodingmode
  --errorlog
  --help
  --hidden
  --ipv6
  --name
  --noninteractive
  --pid-file
  --port
  --prefix
  --profile
  --quiet
  --repository
  --stdio
  --style
  --templates
  --time
  --traceback
  --verbose
  --version
  --web-conf
  -6
  -A
  -E
  -R
  -a
  -d
  -h
  -n
  -p
  -q
  -t
  -v
  -y

Show an error if we use --options with an ambiguous abbreviation
  $ hg debugcomplete --options s
  hg: command 's' is ambiguous:
      serve showconfig status summary
  [255]

Show all commands + options
  $ hg debugcommands
  add: include, exclude, subrepos, dry-run
  annotate: rev, follow, no-follow, text, user, file, date, number, changeset, line-number, ignore-all-space, ignore-space-change, ignore-blank-lines, include, exclude
  clone: noupdate, updaterev, rev, branch, pull, uncompressed, ssh, remotecmd, insecure
  commit: addremove, close-branch, amend, secret, include, exclude, message, logfile, date, user, subrepos
  diff: rev, change, text, git, nodates, show-function, reverse, ignore-all-space, ignore-space-change, ignore-blank-lines, unified, stat, include, exclude, subrepos
  export: output, switch-parent, rev, text, git, nodates
  forget: include, exclude
  init: ssh, remotecmd, insecure
  log: follow, follow-first, date, copies, keyword, rev, removed, only-merges, user, only-branch, branch, prune, patch, git, limit, no-merges, stat, graph, style, template, include, exclude
  merge: force, rev, preview, tool
  pull: update, force, rev, bookmark, branch, ssh, remotecmd, insecure
  push: force, rev, bookmark, branch, new-branch, ssh, remotecmd, insecure
  remove: after, force, include, exclude
  serve: accesslog, daemon, daemon-pipefds, errorlog, port, address, prefix, name, web-conf, webdir-conf, pid-file, stdio, cmdserver, templates, style, ipv6, certificate
  status: all, modified, added, removed, deleted, clean, unknown, ignored, no-status, copies, print0, rev, change, include, exclude, subrepos
  summary: remote
  update: clean, check, date, rev
  addremove: similarity, include, exclude, dry-run
  archive: no-decode, prefix, rev, type, subrepos, include, exclude
  backout: merge, parent, rev, tool, include, exclude, message, logfile, date, user
  bisect: reset, good, bad, skip, extend, command, noupdate
  bookmarks: force, rev, delete, rename, inactive
  branch: force, clean
  branches: active, closed
  bundle: force, rev, branch, base, all, type, ssh, remotecmd, insecure
  cat: output, rev, decode, include, exclude
  config: untrusted, edit, local, global
  copy: after, force, include, exclude, dry-run
  debugancestor: 
  debugbuilddag: mergeable-file, overwritten-file, new-file
  debugbundle: all
  debugcheckstate: 
  debugcommands: 
  debugcomplete: options
  debugdag: tags, branches, dots, spaces
  debugdata: changelog, manifest
  debugdate: extended
  debugdirstate: nodates, datesort
  debugdiscovery: old, nonheads, ssh, remotecmd, insecure
  debugfileset: rev
  debugfsinfo: 
  debuggetbundle: head, common, type
  debugignore: 
  debugindex: changelog, manifest, format
  debugindexdot: 
  debuginstall: 
  debugknown: 
  debuglabelcomplete: 
  debugobsolete: flags, date, user
  debugpathcomplete: full, normal, added, removed
  debugpushkey: 
  debugpvec: 
  debugrebuilddirstate: rev
  debugrename: rev
  debugrevlog: changelog, manifest, dump
  debugrevspec: optimize
  debugsetparents: 
  debugsub: rev
  debugsuccessorssets: 
  debugwalk: include, exclude
  debugwireargs: three, four, five, ssh, remotecmd, insecure
  graft: rev, continue, edit, log, currentdate, currentuser, date, user, tool, dry-run
  grep: print0, all, text, follow, ignore-case, files-with-matches, line-number, rev, user, date, include, exclude
  heads: rev, topo, active, closed, style, template
  help: extension, command, keyword
  identify: rev, num, id, branch, tags, bookmarks, ssh, remotecmd, insecure
  import: strip, base, edit, force, no-commit, bypass, exact, import-branch, message, logfile, date, user, similarity
  incoming: force, newest-first, bundle, rev, bookmarks, branch, patch, git, limit, no-merges, stat, graph, style, template, ssh, remotecmd, insecure, subrepos
  locate: rev, print0, fullpath, include, exclude
  manifest: rev, all
  outgoing: force, rev, newest-first, bookmarks, branch, patch, git, limit, no-merges, stat, graph, style, template, ssh, remotecmd, insecure, subrepos
  parents: rev, style, template
  paths: 
  phase: public, draft, secret, force, rev
  recover: 
  rename: after, force, include, exclude, dry-run
  resolve: all, list, mark, unmark, no-status, tool, include, exclude
  revert: all, date, rev, no-backup, include, exclude, dry-run
  rollback: dry-run, force
  root: 
  tag: force, local, rev, remove, edit, message, date, user
  tags: 
  tip: patch, git, style, template
  unbundle: update
  verify: 
  version: 

  $ hg init a
  $ cd a
  $ echo fee > fee
  $ hg ci -q -Amfee
  $ hg tag fee
  $ mkdir fie
  $ echo dead > fie/dead
  $ echo live > fie/live
  $ hg bookmark fo
  $ hg branch -q fie
  $ hg ci -q -Amfie
  $ echo fo > fo
  $ hg branch -qf default
  $ hg ci -q -Amfo
  $ echo Fum > Fum
  $ hg ci -q -AmFum
  $ hg bookmark Fum

Test debugpathcomplete

  $ hg debugpathcomplete f
  fee
  fie
  fo
  $ hg debugpathcomplete -f f
  fee
  fie/dead
  fie/live
  fo

  $ hg rm Fum
  $ hg debugpathcomplete -r F
  Fum

Test debuglabelcomplete

  $ hg debuglabelcomplete
  Fum
  default
  fee
  fie
  fo
  tip
  $ hg debuglabelcomplete f
  fee
  fie
  fo
