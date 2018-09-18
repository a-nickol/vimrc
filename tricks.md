# Change encoding

e.g.
Open latin1 file, write with
   :write ++enc=utf-8 new_file.txt

e.g.
Open utf-8 file, write with
   :write ++enc=iso-8859-1 new_file.txt

# Change line endings

Open dos file, write with
   :set ff=unix
   :wq

Open unix file, write with
   :set ff=dos
   :wq

