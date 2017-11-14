//
//  ViewController.m
//  KTWorkPad
//
//  Created by Dream.Winston on 2017/11/3.
//  Copyright © 2017年 筑梦师--Winston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#pragma mark - ------------------------基本操作---------------------------
    
#pragma mark -----配置工作环境
    
#pragma mark -----Git操作
    /*
     git config --global user.email "邮箱地址"
     git config --global user.name "名字"
     git初次配置
     
     git分布式管理 分为工作区 暂存区 远程区
     
     1.- git init  初始化git版本库 管理该目录 在需要版本控制的文件夹
     2.- git add . 添加该目录下的所有子文件
     3.- git commit -m '每次提交更改的注释'。
     4.- git status 让我们查看当前 git仓库的状态。
     5.- git diff ***.txt 查看单一文件如何被修改
     6.- git log  查看文件版本历史修改情况  加上--pretty=oneline指令可以简化输出信息
       git log --pretty=oneline --abbrev-commit 查看历史提交
     7.- git reset （--hard）HEAD 回退版本
     8.- cat ***.txt 查看文件内容
     9.- git reflog 查看每一条git指令历史
     10.- git checkout -- xxx.txt 放弃 工作区修改
     11.- git reset HEAD (xxx.txt) 添加文件名 单一回退某个文件，针对git add之后的错误操作但没有进行commit
     12.- rm(dir) 移除文件或文件夹
     13.- git rm ***.txt 从当前HEAD版本库当中删除 文件 需要git commit 提交
     
     远程使用github管理自己的文件：（开会员之前 不要共享公司的文件）
     1.添加自己的设备SSH支持，设置为自己的email账户，获取SSH Key 添加在github
     2.- git remote add origin git@github.com:wwf326813059/、***.git 拿到github的SSH地址 设置git
     3.- git pull origin master --allow-unrelated-histories 遇见主干不同时 使用这句话合并。
     4.- git push origin master 推送本地库到远程仓库
     5.- git clone 从远程库克隆到本地
     6.- git branch *** 新建一条分支
     7.- git checkout *** 切换分支
     8.- git branch -l 查看所有分支
     9.- git branch -d *** 删除分支
     10.- git merge dev 合并分支
     11.- git log --graph 查看分支合并图
     12.- git stash 隐藏工作现场
     13.- git stash list 隐藏工作现场列表
     14.- git stash apply stash@{0} 恢复工作现场（不删除）
     15.- git stash drop stash@{0} 删除工作现场
     16.- git stash pop stash@{0} 恢复并删除
     17.- git branch -D <name> 强心删除
     18.- git remote 查看远程库信息
     19.- git remote -v 显示远程库 详细信息
     20.- git pull 合并远程库
     21.- git branch --set-upstream branch-name origin/branch-name 设置本地库与远程库的关系
     
     
     Git标签管理
     1.git tag name 创建标签。
     2.git tag name HEAD 给指定提交打标签、
     3.git show tagname 展示标签信息
     4.git tag -a name -m "xxxxx" HEAD 打有说明的tag
     5.git tag 查看所有标签。
     6.git tag -d name 删除指定标签。
     7.git push origin name 推送指定标签
     8.git push origin --tags 推送所有标签
     9.git push origin :refs/tags/name 删除远程已推送标签（首先从本地删除）
     
     
     
     */
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
