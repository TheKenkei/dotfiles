targz (){
  echo "taring $1 in $1.tar.gz ... "

  tar -czf $1.tar.gz $1 
  if [ "$2" = "--rm" ]; then
    echo "deling $1 ..."
    rm -rf $1
  fi
  echo "done!"

}
backup ()
{
  echo "backing up $1 to $1-backup ..."
  cp -r $1 $1-backup

  if [ "$2" = "--rm" ]; then
    echo "deling $1 ..."
    rm -rf $1
  fi
  echo "done!"
}

