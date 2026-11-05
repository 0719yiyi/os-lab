#!/bin/bash

while true; do
    read -p "请输入一个整数 (输入 q 退出): " num

    if [ "$num" == "q" ] || [ "$num" == "Q" ]; then
        echo "程序安全退出。"
        break
    fi

    if [ -z "$num" ]; then
        echo "错误：输入不能为空，请重新输入！"
        echo "------------------------"
        continue
    fi

    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
        echo "错误：'$num' 不是一个有效的整数，请重新输入！"
        echo "------------------------"
        continue
    fi

    if [ $((num % 2)) -eq 0 ]; then
        echo "结果：$num 是偶数"
    else
        echo "结果：$num 是奇数"
    fi
    echo "------------------------"
done
