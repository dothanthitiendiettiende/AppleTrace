

path=$1

if [ -z $path ];then
  echo "usage: sh go.sh <path to appletracedata directory>"
  exit
fi

basepath=$(cd `dirname $0`; pwd)
echo $basepath


for D in `find ${path} ! -path ${path} -type d -maxdepth 1`
do
    echo $D
    sh go.sh $D
done
