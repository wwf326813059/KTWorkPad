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
     7.- git reset （--hard）HEAD 回退版本
     8.- cat ***.txt 查看文件内容
     9.- git reflog 查看每一条git指令历史
     10.- git checkout -- xxx.txt 放弃 工作区修改
     11.- git reset HEAD (xxx.txt) 添加文件名 单一回退某个文件，针对git add之后的错误操作但没有进行commit
     12.- rm(dir) 移除文件或文件夹
     13.- git rm ***.txt 从当前HEAD版本库当中删除 文件 需要git commit 提交
     
     
     
     
     */
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
