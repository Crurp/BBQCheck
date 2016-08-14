wget http://www.kcbs.us/events/new
grep -e event new > trimevent.txt
grep '<tr>' trimevent.txt > trimevent1.txt
cut -d '>' -f 15 trimevent1.txt > trimevent2.txt
cut -d '<' -f 1 trimevent2.txt >trimevent3.txt

rm -rf trimevent.txt
rm -rf trimevent1.txt
rm -rf trimevent2.txt
rm -rf new*
