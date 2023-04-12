#!/bin/bash

old_proj_name="BlankAppDemo"

if [ ! -d "./$old_proj_name" ]; then
  echo "目录 $old_proj_name 不存在,本次操作取消"
  exit 1
fi

echo "请输入新工程名字："
read new_proj_name
echo "您输入的工程名字是：$new_proj_name"

echo "开始替换项目内容"
sed -i "" "s/$old_proj_name/$new_proj_name/g" "./.gitignore"
sed -i "" "s/$old_proj_name/$new_proj_name/g" "./$old_proj_name.xcodeproj/project.pbxproj"

echo "开始重命名项目名称"
mv -n "./$old_proj_name.xcodeproj" "./$new_proj_name.xcodeproj"

echo "开始重命名目录"
mv -n "./$old_proj_name" "./$new_proj_name"

echo "完成"

