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
     更新
     git config --global user.email "邮箱地址"
     git config --global user.name "名字"
     
     git config --list 查看git配置列表
     git help config 查看git操作指令
    
     git初次配置
     
     git分布式管理 分为工作区 暂存区 远程区
     
     1.- git init  初始化git版本库 管理该目录 在需要版本控制的文件夹
     2.- git add . 添加该目录下的所有子文件
     3.- git commit -m '每次提交更改的注释'。
     4.- git status 让我们查看当前 git仓库的状态。
     5.- git diff ***.txt 查看单一文件如何被修改
     6.- git log  查看文件版本历史修改情况  加上--pretty=oneline指令可以简化输出信息
       git log -p -次数 查看最近几次的历史版本提交
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
     22.- git commit --amend 撤销上次提交
     23.- git fetch origin 抓取数据
     24.- git remote rename oldname newname 重命名远程分支
     25.- git rebase name 变基
        git rebase --onto master server client
     
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
    
    
#pragma mark ----- 起步 - 关于版本控制
    /*
     关于版本控制
     
     什么是版本控制？我为什么要关心它呢？版本控制是一种记录一个或若干文件内容变化，以便将来查阅特定版本修订情况的系统。在本书所展示的例子中，我们仅对保存着软件源代码的文本文件作版本控制管理，但实际上，你可以对任何类型的文件进行版本控制。
     
     如果你是位图形或网页设计师，可能会需要保存某一幅图片或页面布局文件的所有修订版本（这或许是你非常渴望拥有的功能）。采用版本控制系统（VCS）是个明智的选择。有了它你就可以将某个文件回溯到之前的状态，甚至将整个项目都回退到过去某个时间点的状态。你可以比较文件的变化细节，查出最后是谁修改了哪个地方，从而找出导致怪异问题出现的原因，又是谁在何时报告了某个功能缺陷等等。使用版本控制系统通常还意味着，就算你乱来一气把整个项目中的文件改的改删的删，你也照样可以轻松恢复到原先的样子。但额外增加的工作量却微乎其微。
     本地版本控制系统
     
     许多人习惯用复制整个项目目录的方式来保存不同的版本，或许还会改名加上备份时间以示区别。这么做唯一的好处就是简单。不过坏处也不少：有时候会混淆所在的工作目录，一旦弄错文件丢了数据就没法撤销恢复。
     
     为了解决这个问题，人们很久以前就开发了许多种本地版本控制系统，大多都是采用某种简单的数据库来记录文件的历次更新差异（见图 1-1）
     
     
     其中最流行的一种叫做 rcs，现今许多计算机系统上都还看得到它的踪影。甚至在流行的 Mac OS X 系统上安装了开发者工具包之后，也可以使用 rcs 命令。它的工作原理基本上就是保存并管理文件补丁（patch）。文件补丁是一种特定格式的文本文件，记录着对应文件修订前后的内容变化。所以，根据每次修订后的补丁，rcs 可以通过不断打补丁，计算出各个版本的文件内容。
     集中化的版本控制系统
     
     接下来人们又遇到一个问题，如何让在不同系统上的开发者协同工作？于是，集中化的版本控制系统（ Centralized Version Control Systems，简称 CVCS ）应运而生。这类系统，诸如 CVS，Subversion 以及 Perforce 等，都有一个单一的集中管理的服务器，保存所有文件的修订版本，而协同工作的人们都通过客户端连到这台服务器，取出最新的文件或者提交更新。多年以来，这已成为版本控制系统的标准做法（见图 1-2）。
     
     这种做法带来了许多好处，特别是相较于老式的本地 VCS 来说。现在，每个人都可以在一定程度上看到项目中的其他人正在做些什么。而管理员也可以轻松掌控每个开发者的权限，并且管理一个 CVCS 要远比在各个客户端上维护本地数据库来得轻松容易。
     
     事分两面，有好有坏。这么做最显而易见的缺点是中央服务器的单点故障。如果宕机一小时，那么在这一小时内，谁都无法提交更新，也就无法协同工作。要是中央服务器的磁盘发生故障，碰巧没做备份，或者备份不够及时，就会有丢失数据的风险。最坏的情况是彻底丢失整个项目的所有历史更改记录，而被客户端偶然提取出来的保存在本地的某些快照数据就成了恢复数据的希望。但这样的话依然是个问题，你不能保证所有的数据都已经有人事先完整提取出来过。本地版本控制系统也存在类似问题，只要整个项目的历史记录被保存在单一位置，就有丢失所有历史更新记录的风险。
     分布式版本控制系统
     
     于是分布式版本控制系统（ Distributed Version Control System，简称 DVCS ）面世了。在这类系统中，像 Git，Mercurial，Bazaar 以及 Darcs 等，客户端并不只提取最新版本的文件快照，而是把代码仓库完整地镜像下来。这么一来，任何一处协同工作用的服务器发生故障，事后都可以用任何一个镜像出来的本地仓库恢复。因为每一次的提取操作，实际上都是一次对代码仓库的完整备份（见图 1-3）
     
     更进一步，许多这类系统都可以指定和若干不同的远端代码仓库进行交互。籍此，你就可以在同一个项目中，分别和不同工作小组的人相互协作。你可以根据需要设定不同的协作流程，比如层次模型式的工作流，而这在以前的集中式系统中是无法实现的。
     
     原文链接：https://git-scm.com/book/zh/v1/%E8%B5%B7%E6%AD%A5-%E5%85%B3%E4%BA%8E%E7%89%88%E6%9C%AC%E6%8E%A7%E5%88%B6
     */
    
#pragma mark ----- 起步 - Git 基础
    /*
     
     
     那么，简单地说，Git 究竟是怎样的一个系统呢？ 请注意接下来的内容非常重要，若你理解了 Git 的思想和基本工作原理，用起来就会知其所以然，游刃有余。 在开始学习 Git 的时候，请努力分清你对其它版本管理系统的已有认识，如 Subversion 和 Perforce 等；这么做能帮助你使用工具时避免发生混淆。 Git 在保存和对待各种信息的时候与其它版本控制系统有很大差异，尽管操作起来的命令形式非常相近，理解这些差异将有助于防止你使用中的困惑。
     直接记录快照，而非差异比较
     
     Git 和其它版本控制系统（包括 Subversion 和近似工具）的主要差别在于 Git 对待数据的方法。 概念上来区分，其它大部分系统以文件变更列表的方式存储信息。 这类系统（CVS、Subversion、Perforce、Bazaar 等等）将它们保存的信息看作是一组基本文件和每个文件随时间逐步累积的差异。
     存储每个文件与初始版本的差异。
     Figure 4. 存储每个文件与初始版本的差异.
     
     Git 不按照以上方式对待或保存数据。 反之，Git 更像是把数据看作是对小型文件系统的一组快照。 每次你提交更新，或在 Git 中保存项目状态时，它主要对当时的全部文件制作一个快照并保存这个快照的索引。 为了高效，如果文件没有修改，Git 不再重新存储该文件，而是只保留一个链接指向之前存储的文件。 Git 对待数据更像是一个 快照流。
     Git 存储项目随时间改变的快照。
     Figure 5. 存储项目随时间改变的快照.
     
     这是 Git 与几乎所有其它版本控制系统的重要区别。 因此 Git 重新考虑了以前每一代版本控制系统延续下来的诸多方面。 Git 更像是一个小型的文件系统，提供了许多以此为基础构建的超强工具，而不只是一个简单的 VCS。 稍后我们在Git 分支讨论 Git 分支管理时，将探究这种方式对待数据所能获得的益处。
     近乎所有操作都是本地执行
     
     在 Git 中的绝大多数操作都只需要访问本地文件和资源，一般不需要来自网络上其它计算机的信息。 如果你习惯于所有操作都有网络延时开销的集中式版本控制系统，Git 在这方面会让你感到速度之神赐给了 Git 超凡的能量。 因为你在本地磁盘上就有项目的完整历史，所以大部分操作看起来瞬间完成。
     
     举个例子，要浏览项目的历史，Git 不需外连到服务器去获取历史，然后再显示出来——它只需直接从本地数据库中读取。 你能立即看到项目历史。 如果你想查看当前版本与一个月前的版本之间引入的修改，Git 会查找到一个月前的文件做一次本地的差异计算，而不是由远程服务器处理或从远程服务器拉回旧版本文件再来本地处理。
     
     这也意味着你离线或者没有 VPN 时，几乎可以进行任何操作。 如你在飞机或火车上想做些工作，你能愉快地提交，直到有网络连接时再上传。 如你回家后 VPN 客户端不正常，你仍能工作。 使用其它系统，做到如此是不可能或很费力的。 比如，用 Perforce，你没有连接服务器时几乎不能做什么事；用 Subversion 和 CVS，你能修改文件，但不能向数据库提交修改（因为你的本地数据库离线了）。 这看起来不是大问题，但是你可能会惊喜地发现它带来的巨大的不同。
     Git 保证完整性
     
     Git 中所有数据在存储前都计算校验和，然后以校验和来引用。 这意味着不可能在 Git 不知情时更改任何文件内容或目录内容。 这个功能建构在 Git 底层，是构成 Git 哲学不可或缺的部分。 若你在传送过程中丢失信息或损坏文件，Git 就能发现。
     
     Git 用以计算校验和的机制叫做 SHA-1 散列（hash，哈希）。 这是一个由 40 个十六进制字符（0-9 和 a-f）组成字符串，基于 Git 中文件的内容或目录结构计算出来。 SHA-1 哈希看起来是这样：
     
     24b9da6552252987aa493b52f8696cd6d3b00373
     
     Git 中使用这种哈希值的情况很多，你将经常看到这种哈希值。 实际上，Git 数据库中保存的信息都是以文件内容的哈希值来索引，而不是文件名。
     Git 一般只添加数据
     
     你执行的 Git 操作，几乎只往 Git 数据库中增加数据。 很难让 Git 执行任何不可逆操作，或者让它以任何方式清除数据。 同别的 VCS 一样，未提交更新时有可能丢失或弄乱修改的内容；但是一旦你提交快照到 Git 中，就难以再丢失数据，特别是如果你定期的推送数据库到其它仓库的话。
     
     这使得我们使用 Git 成为一个安心愉悦的过程，因为我们深知可以尽情做各种尝试，而没有把事情弄糟的危险。 更深度探讨 Git 如何保存数据及恢复丢失数据的话题，请参考撤消操作。
     三种状态
     
     好，请注意。 如果你希望后面的学习更顺利，记住下面这些关于 Git 的概念。 Git 有三种状态，你的文件可能处于其中之一：已提交（committed）、已修改（modified）和已暂存（staged）。 已提交表示数据已经安全的保存在本地数据库中。 已修改表示修改了文件，但还没保存到数据库中。 已暂存表示对一个已修改文件的当前版本做了标记，使之包含在下次提交的快照中。
     
     由此引入 Git 项目的三个工作区域的概念：Git 仓库、工作目录以及暂存区域。
     工作目录、暂存区域以及 Git 仓库。
     Figure 6. 工作目录、暂存区域以及 Git 仓库.
     
     Git 仓库目录是 Git 用来保存项目的元数据和对象数据库的地方。 这是 Git 中最重要的部分，从其它计算机克隆仓库时，拷贝的就是这里的数据。
     
     工作目录是对项目的某个版本独立提取出来的内容。 这些从 Git 仓库的压缩数据库中提取出来的文件，放在磁盘上供你使用或修改。
     
     暂存区域是一个文件，保存了下次将提交的文件列表信息，一般在 Git 仓库目录中。 有时候也被称作`‘索引’'，不过一般说法还是叫暂存区域。
     
     基本的 Git 工作流程如下：
     
     在工作目录中修改文件。
     
     暂存文件，将文件的快照放入暂存区域。
     
     提交更新，找到暂存区域的文件，将快照永久性存储到 Git 仓库目录。
     
     如果 Git 目录中保存着的特定版本文件，就属于已提交状态。 如果作了修改并已放入暂存区域，就属于已暂存状态。 如果自上次取出后，作了修改但还没有放到暂存区域，就是已修改状态。 在Git 基础一章，你会进一步了解这些状态的细节，并学会如何根据文件状态实施后续操作，以及怎样跳过暂存直接提交。

     */
#pragma mark ----- 起步 - Git 安装
    /*
     安装 Git
     
     在你开始使用 Git 前，需要将它安装在你的计算机上。 即便已经安装，最好将它升级到最新的版本。 你可以通过软件包或者其它安装程序来安装，或者下载源码编译安装。
     Note
     
     
     本书写作时使用的 Git 版本为 2.0.0。 我们使用的大部分命令仍然可以在很古老的 Git 版本上使用，但也有少部分命令不好用或者在旧版本中的行为有差异。 因为 Git 在保持向后兼容方面表现很好，本书使用的这些命令在 2.0 之后的版本应该有效。
     在 Linux 上安装
     
     如果你想在 Linux 上用二进制安装程序来安装 Git，可以使用发行版包含的基础软件包管理工具来安装。 如果以 Fedora 上为例，你可以使用 yum：
     
     $ sudo yum install git
     
     如果你在基于 Debian 的发行版上，请尝试用 apt-get：
     
     $ sudo apt-get install git
     
     要了解更多选择，Git 官方网站上有在各种 Unix 风格的系统上安装步骤，网址为 http://git-scm.com/download/linux。
     在 Mac 上安装
     
     在 Mac 上安装 Git 有多种方式。 最简单的方法是安装 Xcode Command Line Tools。 Mavericks （10.9） 或更高版本的系统中，在 Terminal 里尝试首次运行 git 命令即可。 如果没有安装过命令行开发者工具，将会提示你安装。
     
     如果你想安装更新的版本，可以使用二进制安装程序。 官方维护的 OSX Git 安装程序可以在 Git 官方网站下载，网址为 http://git-scm.com/download/mac。
     Git OS X 安装程序。
     Figure 7. Git OS X 安装程序.
     
     你也可以将它作为 GitHub for Mac 的一部分来安装。 它们的图形化 Git 工具有一个安装命令行工具的选项。 你可以从 GitHub for Mac 网站下载该工具，网址为 http://mac.github.com。
     在 Windows 上安装
     
     在 Windows 上安装 Git 也有几种安装方法。 官方版本可以在 Git 官方网站下载。 打开 http://git-scm.com/download/win，下载会自动开始。 要注意这是一个名为 Git for Windows的项目（也叫做 msysGit），和 Git 是分别独立的项目；更多信息请访问 http://msysgit.github.io/。
     
     另一个简单的方法是安装 GitHub for Windows。 该安装程序包含图形化和命令行版本的 Git。 它也能支持 Powershell，提供了稳定的凭证缓存和健全的 CRLF 设置。 稍后我们会对这方面有更多了解，现在只要一句话就够了，这些都是你所需要的。 你可以在 GitHub for Windows 网站下载，网址为 http://windows.github.com。
     从源代码安装
     
     有人觉得从源码安装 Git 更实用，因为你能得到最新的版本。 二进制安装程序倾向于有一些滞后，当然近几年 Git 已经成熟，这个差异不再显著。
     
     如果你想从源码安装 Git，需要安装 Git 依赖的库：curl、zlib、openssl、expat，还有libiconv。 如果你的系统上有 yum （如 Fedora）或者 apt-get（如基于 Debian 的系统），可以使用以下命令之一来安装最小化的依赖包来编译和安装 Git 的二进制版：
     
     $ sudo yum install curl-devel expat-devel gettext-devel \
     openssl-devel zlib-devel
     $ sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \
     libz-dev libssl-dev
     
     为了能够添加更多格式的文档（如 doc, html, info），你需要安装以下的依赖包：
     
     $ sudo yum install asciidoc xmlto docbook2x
     $ sudo apt-get install asciidoc xmlto docbook2x
     
     当你安装好所有的必要依赖，你可以继续从几个地方来取得最新发布版本的 tar 包。 你可以从 Kernel.org 网站获取，网址为 https://www.kernel.org/pub/software/scm/git，或从 GitHub 网站上的镜像来获得，网址为 https://github.com/git/git/releases。 通常在 GitHub 上的是最新版本，但 kernel.org 上包含有文件下载签名，如果你想验证下载正确性的话会用到。
     
     接着，编译并安装：
     
     $ tar -zxf git-2.0.0.tar.gz
     $ cd git-2.0.0
     $ make configure
     $ ./configure --prefix=/usr
     $ make all doc info
     $ sudo make install install-doc install-html install-info
     
     完成后，你可以使用 Git 来获取 Git 的升级：
     
     $ git clone git://git.kernel.org/pub/scm/git/git.git
     

     */

#pragma mark ----- 起步 - Git 配置
    
    /*
     初次运行 Git 前的配置
     
     既然已经在系统上安装了 Git，你会想要做几件事来定制你的 Git 环境。 每台计算机上只需要配置一次，程序升级时会保留配置信息。 你可以在任何时候再次通过运行命令来修改它们。
     
     Git 自带一个 git config 的工具来帮助设置控制 Git 外观和行为的配置变量。 这些变量存储在三个不同的位置：
     
     /etc/gitconfig 文件: 包含系统上每一个用户及他们仓库的通用配置。 如果使用带有 --system 选项的 git config 时，它会从此文件读写配置变量。
     
     ~/.gitconfig 或 ~/.config/git/config 文件：只针对当前用户。 可以传递 --global 选项让 Git 读写此文件。
     
     当前使用仓库的 Git 目录中的 config 文件（就是 .git/config）：针对该仓库。
     
     每一个级别覆盖上一级别的配置，所以 .git/config 的配置变量会覆盖 /etc/gitconfig 中的配置变量。
     
     在 Windows 系统中，Git 会查找 $HOME 目录下（一般情况下是 C:\Users\$USER）的 .gitconfig 文件。 Git 同样也会寻找 /etc/gitconfig 文件，但只限于 MSys 的根目录下，即安装 Git 时所选的目标位置。
     用户信息
     
     当安装完 Git 应该做的第一件事就是设置你的用户名称与邮件地址。 这样做很重要，因为每一个 Git 的提交都会使用这些信息，并且它会写入到你的每一次提交中，不可更改：
     
     $ git config --global user.name "John Doe"
     $ git config --global user.email johndoe@example.com
     
     再次强调，如果使用了 --global 选项，那么该命令只需要运行一次，因为之后无论你在该系统上做任何事情， Git 都会使用那些信息。 当你想针对特定项目使用不同的用户名称与邮件地址时，可以在那个项目目录下运行没有 --global 选项的命令来配置。
     
     很多 GUI 工具都会在第一次运行时帮助你配置这些信息。
     文本编辑器
     
     既然用户信息已经设置完毕，你可以配置默认文本编辑器了，当 Git 需要你输入信息时会调用它。 如果未配置，Git 会使用操作系统默认的文本编辑器，通常是 Vim。 如果你想使用不同的文本编辑器，例如 Emacs，可以这样做：
     
     $ git config --global core.editor emacs
     
     Warning
     
     
     Vim 和 Emacs 是像 Linux 与 Mac 等基于 Unix 的系统上开发者经常使用的流行的文本编辑器。 如果你对这些编辑器都不是很了解或者你使用的是 Windows 系统，那么可能需要搜索如何在 Git 中配置你最常用的编辑器。 如果你不设置编辑器并且不知道 Vim 或 Emacs 是什么，当它们运行起来后你可能会被弄糊涂、不知所措。
     检查配置信息
     
     如果想要检查你的配置，可以使用 git config --list 命令来列出所有 Git 当时能找到的配置。
     
     $ git config --list
     user.name=John Doe
     user.email=johndoe@example.com
     color.status=auto
     color.branch=auto
     color.interactive=auto
     color.diff=auto
     ...
     
     你可能会看到重复的变量名，因为 Git 会从不同的文件中读取同一个配置（例如：/etc/gitconfig 与 ~/.gitconfig）。 这种情况下，Git 会使用它找到的每一个变量的最后一个配置。
     
     你可以通过输入 git config <key>： 来检查 Git 的某一项配置
     
     $ git config user.name
     John Doe
     
     */
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
