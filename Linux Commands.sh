Linux Commands
===============


ls -alh

=======================================================================================================================

Cd
========================================================================================================================
mkdir 

Mandatory arguments to long options are mandatory for short options too.

       -m, --mode=MODE
              set file mode (as in chmod), not a=rwx - umask

       -p, --parents
              no error if existing, make parent directories as needed

       -v, --verbose
              print a message for each created directory

       -Z     set SELinux security context of each created directory to the default type
==========================================================================================================================
rmdir


 Remove the DIRECTORY(ies), if they are empty.

       --ignore-fail-on-non-empty

              ignore each failure that is solely because a directory

              is non-empty

       -p, --parents
              remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir a/b/c a/b a'

       -v, --verbose
              output a diagnostic for every directory processed

       --help display this help and exit

       --version
              output version information and exit
==============================================================================================================================
rm

Remove (unlink) the FILE(s).

       -f, --force
              ignore nonexistent files and arguments, never prompt

       -i     prompt before every removal

       -I     prompt once before removing more than three files, or when removing recursively; less intrusive than -i, while still giving protection against most mistakes

       --interactive[=WHEN]
              prompt according to WHEN: never, once (-I), or always (-i); without WHEN, prompt always

       --one-file-system
              when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument

       --no-preserve-root
              do not treat '/' specially

       --preserve-root
              do not remove '/' (default)

       -r, -R, --recursive
              remove directories and their contents recursively

       -d, --dir
              remove empty directories

       -v, --verbose
              explain what is being done

       --help display this help and exit

       --version
              output version information and exit
======================================================================================================================================
grep - grep  searches  for  PATTERN  in  each  FILE.

SYNOPSIS
       grep [OPTIONS] PATTERN [FILE...]
       grep [OPTIONS] -e PATTERN ... [FILE...]
       grep [OPTIONS] -f FILE ... [FILE...]

 Matching Control
       -e PATTERN, --regexp=PATTERN
              Use PATTERN as the pattern.  If this option is used multiple times or is combined with the -f (--file) option, search for all patterns given.  This option can be used to protect a pattern beginning with “-”.

       -f FILE, --file=FILE
              Obtain patterns from FILE, one per line.  If this option is used multiple times or is combined with the -e (--regexp) option, search for all patterns given.  The  empty  file  contains  zero  patterns,  and  therefore
              matches nothing.

       -i, --ignore-case
              Ignore case distinctions, so that characters that differ only in case match each other.

       -v, --invert-match
              Invert the sense of matching, to select non-matching lines.

       -w, --word-regexp
              Select  only  those lines containing matches that form whole words.  The test is that the matching substring must either be at the beginning of the line, or preceded by a non-word constituent character.  Similarly, it
              must be either at the end of the line or followed by a non-word constituent character.  Word-constituent characters are letters, digits, and the underscore.  This option has no effect if -x is also specified.

       -x, --line-regexp
              Select only those matches that exactly match the whole line.  For a regular expression pattern, this is like parenthesizing the pattern and then surrounding it with ^ and $.

       -y     Obsolete synonym for -i.
===================================================================================================================================================


FIND(1)                                                                                                 General Commands Manual                                                                                                 FIND(1)

NAME
       find - search for files in a directory hierarchy

SYNOPSIS
       find [-H] [-L] [-P] [-D debugopts] [-Olevel] [starting-point...] [expression]


EXAMPLE:

find <directory where we need top find the file(s)> -type f -name <name of the flie which needds to be found>


================================================================================================================
ln - 

In the 1st form, create a link to TARGET with the name LINK_NAME.  In the 2nd form, create a link to TARGET in the current directory.  In the 3rd and 4th forms, 
create links to each TARGET in DIRECTORY.  Create hard links by default, symbolic links with --symbolic.  
By default, each destination (name of new link) should not already exist.  When creating hard links, each TARGET must exist.   Symbolic  links  can  hold  
arbitrary  text;  if  later resolved, a relative link is interpreted in relation to its parent directory.

SYNOPSIS
       ln [OPTION]... [-T] TARGET LINK_NAME   (1st form)
       ln [OPTION]... TARGET                  (2nd form)
       ln [OPTION]... TARGET... DIRECTORY     (3rd form)
       ln [OPTION]... -t DIRECTORY TARGET...  (4th form)

=======================================================================================================================================================

cat - concatenate files and print on the standard output

SYNOPSIS
       cat [OPTION]... [FILE]...


less

more

head

tail

========================================================================================================================================================

man

========================================================================================================================================

mv - command is used tio moving file and renaming the file

SYNOPSIS
       mv [OPTION]... [-T] SOURCE DEST
       mv [OPTION]... SOURCE... DIRECTORY
       mv [OPTION]... -t DIRECTORY SOURCE...

============================================================================================================================================

cp - copy file from one place to another place

SYNOPSIS
       cp [OPTION]... [-T] SOURCE DEST
       cp [OPTION]... SOURCE... DIRECTORY
       cp [OPTION]... -t DIRECTORY SOURCE...


scp -  — secure copy (remote file copy program)

SYNOPSIS
     scp [-346BCpqrTv] [-c cipher] [-F ssh_config] [-i identity_file] [-l limit] [-o ssh_option] [-P port] [-S program] [[user@]host1:]file1 ... [[user@]host2:]file2

=================================================================================================

 top - display Linux processes

SYNOPSIS
       top -hv|-bcHiOSs -d secs -n max -u|U user -p pid -o fld -w [cols]

       The traditional switches `-' and whitespace are optional.


=====================================================================================================================================

ps - report a snapshot of the current processes.

SYNOPSIS
       ps [options]

DESCRIPTION
       ps displays information about a selection of the active processes.  If you want a repetitive update of the selection and the displayed information, use top(1) instead.

EXAMPLES
       To see every process on the system using standard syntax:
          ps -e
          ps -ef
          ps -eF
          ps -ely

       To see every process on the system using BSD syntax:
          ps ax
          ps axu

       To print a process tree:
          ps -ejH
          ps axjf

       To get info about threads:
          ps -eLf
          ps axms

       To get security info:
          ps -eo euser,ruser,suser,fuser,f,comm,label
          ps axZ
          ps -eM

       To see every process running as root (real & effective ID) in user format:
          ps -U root -u root u

       To see every process with a user-defined format:
          ps -eo pid,tid,class,rtprio,ni,pri,psr,pcpu,stat,wchan:14,comm
          ps axo stat,euid,ruid,tty,tpgid,sess,pgrp,ppid,pid,pcpu,comm
          ps -Ao pid,tt,user,fname,tmout,f,wchan

       Print only the process IDs of syslogd:
          ps -C syslogd -o pid=

       Print only the name of PID 42:
          ps -q 42 -o comm=

==================================================================================================================================

tree
 tree - list contents of directories in a tree-like format.

 ===================================================================================================


chmod - change file mode bits

SYNOPSIS
       chmod [OPTION]... MODE[,MODE]... FILE...   u+rwx g+rwx o+rwx u-rwx g-rwx o-rwx
       chmod [OPTION]... OCTAL-MODE FILE...   OCTAL-MODE: read-4; write-2; execute-1
       chmod [OPTION]... --reference=RFILE FILE... 


chown- change file owner and group

SYNOPSIS
       chown [OPTION]... [OWNER][:[GROUP]] FILE...
       chown [OPTION]... --reference=RFILE FILE...


-------------------------------------------------------------------------------------------------------------------
useradd

NAME
       useradd - create a new user or update default new user information

SYNOPSIS
       useradd [options] LOGIN

       useradd -D

       useradd -D [options]


userdel - delete a user account and related files

SYNOPSIS
       userdel [options] LOGIN

DESCRIPTION
       userdel is a low level utility for removing users. On Debian, administrators should usually use deluser(8) instead.

       The userdel command modifies the system account files, deleting all entries that refer to the user name LOGIN. The named user must exist.

OPTIONS
       The options which apply to the userdel command are:

       -f, --force
           This option forces the removal of the user account, even if the user is still logged in. It also forces userdel to remove the user's home directory and mail spool, even if another user uses the same home directory or if
           the mail spool is not owned by the specified user. If USERGROUPS_ENAB is defined to yes in /etc/login.defs and if a group exists with the same name as the deleted user, then this group will be removed, even if it is
           still the primary group of another user.

           Note: This option is dangerous and may leave your system in an inconsistent state.

       -h, --help
           Display help message and exit.

       -r, --remove
           Files in the user's home directory will be removed along with the home directory itself and the user's mail spool. Files located in other file systems will have to be searched for and deleted manually.

           The mail spool is defined by the MAIL_DIR variable in the login.defs file.

       -R, --root CHROOT_DIR
           Apply changes in the CHROOT_DIR directory and use the configuration files from the CHROOT_DIR directory.

       -Z, --selinux-user
           Remove any SELinux user mapping for the user's login.

NAME
       usermod - modify a user account

SYNOPSIS
       usermod [options] LOGIN

DESCRIPTION
       The usermod command modifies the system account files to reflect the changes that are specified on the command line.

======================================================================================================================================================
Text Editor

nano

vim

=======================================================================================================================================

pwd - print name of current/working directory


which - locate a command
DESCRIPTION
       which  returns  the pathnames of the files (or links) which would be executed in the current environment, had its arguments been given as commands in a strictly POSIX-conformant shell.  It does this by searching the PATH for
       executable files matching the names of the arguments. It does not canonicalize path names.


whoami - print effective userid

DESCRIPTION
       Print the user name associated with the current effective user ID.

=================================================================================================================================


DF(1)                                                                                                        User Commands                                                                                                        DF(1)

NAME
       df - report file system disk space usage

SYNOPSIS
       df [OPTION]... [FILE]...



================================================================================================================================    




================================================================================================================================  




================================================================================================================================  




================================================================================================================================  




================================================================================================================================  

exit
shutdown

poweroff

NAME
       halt, poweroff, reboot - Halt, power-off or reboot the machine

SYNOPSIS
       halt [OPTIONS...]

       poweroff [OPTIONS...]

       reboot [OPTIONS...]

DESCRIPTION
       halt, poweroff, reboot may be used to halt, power-off or reboot the machine.


