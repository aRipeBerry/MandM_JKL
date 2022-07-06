for i in `find ../Pix/. -type d -exec basename {} \;`
do
mkdir _$i
done

rmdir _.
