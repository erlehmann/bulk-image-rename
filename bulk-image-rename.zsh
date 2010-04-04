#!/usr/bin/zsh

# 450 is max height for new images
for file (**/*-*x450.*) {
    echo $file

    # 450 was old width for images
    ls ${(S)file//-*x450.(jpg|png)/}* |grep 450x > tempfile

    echo mv $file $(cat tempfile)
    mv $file $(cat tempfile)
}

# 650 is max width for new images
for file (**/*-650x*.*) {
    echo $file

    # 450 was old width for images
    ls ${(S)file//-650x*.(jpg|png)/}* |grep 450x > tempfile

    echo mv $file $(cat tempfile)
    mv $file $(cat tempfile)
}
