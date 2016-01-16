from sulley import *
from requests import ftp # this is our ftp.py file

sess               = sessions.session(session_filename="audits/warftpd.session")
target         = sessions.target("192.168.244.133", 21)
target.netmon  = pedrpc.client("192.168.244.133", 26001)
target.procmon = pedrpc.client("192.168.244.133", 26002)
target.procmon_options = { "proc_name" : "war-ftpd.exe" }


sess.add_target(target)


sess.connect(s_get("user"))
sess.connect(s_get(“user”), s_get(“pass”))
sess.connect(s_get(“pass”), s_get(“cwd”))
sess.connect(s_get(“pass”), s_get(“dele”))

sess.connect(s_get(“pass”), s_get(“mdtm”))
sess.connect(s_get(“pass”), s_get(“mkd”))

sess.fuzz()
