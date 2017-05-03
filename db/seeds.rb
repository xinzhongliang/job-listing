# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "这个种子档会自动建立一个admin帐号, 并创建5个 public jobs, 以及2个hidden jobs"

puts "这是用种子建立的第一个工作."

create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', is_admin: 'true'])
puts "Admin account created."

Job.create!([title: "外包小团队招募一名 ROR 全职工程师 (16K)", description: %{
主要工作内容包括：

完善数据分析平台，包括增加和完善功能，修复bug 数据保障，编写数据监控的脚本，做数据迁移 针对不同的客户，定制不同的portal 其他一些零碎的工作

要求：

ROR一年以上的工作经验 熟悉postgresql或类似关系型数据库 有分析和处理千万以上数据经验的最好 能阅读英文文档，并正确理解用户需求，通过GitHub进行沟通 熟悉 Linux, Nginx, Git, Postgresql, Redis,

工作方式：远程工作

日常工作以slack和GitHub进行沟通，如果需求不明或需要讨论的时候需要使用Hangout
},
wage_upper_bound: 16000, wage_lower_bound: 12000, is_hidden: "false", city: "大连", category: "初级", company: "AA"])

puts "第一个工作（Public）建立成功."

puts "这是用种子建立的第二个工作."
Job.create!([title: "Ruby on Rails 资深开发工程师", description: %{
职位描述

1. 开发基于开源 Rails 框架的数字资产交易所 ；
2. 开发区块链项目 Web 应用与项目；

任职要求

1. 本科，3 年以上工作经验；
2. 熟悉 Ruby 语言开发,3年以上 Web 开发经验；
3. 熟悉 RubyOnRails 框架，有完整的 Rails 网站 WEB 系统开发经验；
4. 熟悉 Linux ， Redis ， MySQL, RabbitMQ ， Mongodb 数据库，有设计一定规模数据库的经验，有性能调优经验；
5. 具备良好的代码书写规范，善于思考，能独立分析和解决问题；
6. 熟悉 TDD ， BDD 等开发模式，并能够在实际开发中编写完善的测试代码；
7. 具备较强的接受新知识的能力，有安全领域或系统管理方面经验者优先
8. 熟悉 HTML5 、 CSS3 、 Javascript ，精通 Javascript 优先；
9. 熟练使用 git 、英文能力突出、或给开源项目贡献代码的可加分(请在简历中提供 Github 账号)；

薪资待遇
1. 税前 20K-30K， 13-18 薪；
2. 五险一金、交通补贴、餐饮补贴、通讯补贴、绩效奖金、年终奖金、股票期权、弹性工作、定期体检；
},
wage_upper_bound: 30000, wage_lower_bound: 13000, is_hidden: "false", city: "北京", category: "高级", company: "BB"])

puts "第二个工作（Public）建立成功."

puts "这是用种子建立的第三个工作."
Job.create!([title: "Senior Ruby on Rails Software Engineer", description: %{

Requirements:

  Core Skills

  Able to use a Mac
  Basic Photoshop knowledge
  Communicate effectively in English (spoken & written)
  Able to work efficiently by yourself and with a team of coworkers
  Willingness to learn

  Basic Skills

  2+ years of Ruby on Rails experience (3.0+)
  Database (PostgreSQL, MySQL, MongoDB)
  HTML/HAML, CSS/SCSS, Javascript/Coffeescript
  Mobile and responsive website experience
  Bonus Skills

  Knowledge of server deployment strategies (Capistrano, MINA)

  Knowledge of at least one Javascript MVC framework (Angular JS, Ember.js, etc.)
  Experience leading a small to medium size team of engineers

  Responsibilities:

  The majority of your time will be spent coding

  Mentoring Junior Software Engineers by providing advice and pair programming
  Leading development of small to medium scale projects, providing architecture planning and analysis
  Working with a Project Manager to provide estimates for client requested features
  Reviewing code of Junior Developers before it is merged with the primary development branch
  Compensation:

  15K-30K per month
},
wage_upper_bound: 30000, wage_lower_bound: 17000, is_hidden: "false", city: "New York", category: "Senior", company: "CC"])


puts "第三个工作（Public）建立成功."

puts "这是用种子建立的第四个工作."
Job.create!([title: "全栈开发工程师/Ruby高级开发工程师", description: %{
岗位职责：

负责投融资平台的开发、维护和部署

任职资格：

拥有 2 年以上 Ruby on Rails 项目经验
了解 Nginx/MySQL/Linux 等
熟练运用 git, 具备优秀的团队合作能力
具有较强的抽象思维能力

加分项：

如果应聘全栈工程师熟悉至少一种前端 MVC 框架，包括但不限于 AngularJS 、 React 、 Vue.js
熟悉 PostgreSQL 数据库或有 OLAP 系统开发经验者优先。
待遇

年终奖 + (20K-30K) * 12
},
wage_upper_bound: 30000, wage_lower_bound: 15000, is_hidden: "false", city: "成都", category: "高级", company: "DD"])

puts "第四个工作（Public）建立成功."

puts "这是用种子建立的第五个工作."
Job.create!([title: "全职 Ruby and Ruby On Rails 高级工程师", description: %{
工作职责

按照需求和质量标准完成项目代码开发工作；
参与项目架构和功能设计；
撰写相关技术文档；
跟踪分析用户反馈，提高产品质量，优化用户体验。

任职资格

熟悉网络模型，熟悉HTTP协议
对软件工程、用户体验有必要的理解
掌握常用设计模式，有良好的编码习惯，能够书写规范、优质的代码
良好的英文文档阅读能力，能独立解决问题
至少掌握 Ruby 语言
至少掌握 Ruby on Rails 框架，有完整的 Rails 项目开发经验者优先
对技术发展有敏锐的嗅觉，有更新的技术实践经验者优先
有技术博客、GitHub 帐号者优先
对工作有极高的热情，踏实、勤奋；具有创造力、活力
优秀的团队协作能力、沟通能力、自学能力以及较强的责任心

薪资和福利

月薪5K-10K，具体根据个人能力而定
基本工资+期权奖励
五险一金
开阔自由的发展空间
技术大神带领练功
有爱小伙伴团队
法定节假日
美味可口的零食供给、愉快向上的办公环境
轻松的团建活动——多数是看小电影、唱歌聚会
},
wage_upper_bound: 30000, wage_lower_bound: 13000, is_hidden: "false", city: "北京", category: "中级", company: "EE"])


puts "第五个工作（Public）建立成功."

puts "这是用种子建立的第六个工作."
Job.create!([title: "招聘 Ruby 工程师 ( 15～ 25k)", description: %{
  基本要求：

  具备扎实的计算机，网络，数据库，算法基础知识
  一年以上 Ruby 开发经验，熟悉 Rails 框架
  有基本的前端知识, 包括 HTML, CSS, Javascript 等
  熟悉 Git 协作流程
  良好的编码习惯

  加分项：

  喜欢折腾 Linux
  关注 hacker news
  愿意尝试新的技术 /语言
  其他技术栈： https://stackshare.io/geekpark

  我们能提供什么？

  内部分享会
  舒适的工作环境
  严重失调的男女比例
  极度轻松自主的工作节奏
  六险一金，免费午餐 / 晚餐
  喜欢折腾紧跟新技术的小伙伴
  交通、电话、电脑以及各种补助
  第一时间尝试最新最好玩的智能硬件
  每年免费（刷脸 & 打杂）参加高端大会
#},
wage_upper_bound: 25000, wage_lower_bound: 15000, is_hidden: "true", city: "上海", category: "高级", company: "FF"])
puts "第六个工作（Hidden）建立成功."

puts "这是用种子建立的第七个工作."
Job.create!([title: "招聘Ruby工程师2人", description: %{
  岗位职责

  使用Ruby On Rails开发在Linux平台下的大规模高并发Web应用

  任职要求

  熟悉Ruby语言编程，具备良好的代码书写规范；
  熟悉Ruby on Rails框架，1年以上Ruby on Rails项目开发经验；
  有Web系统的开发经验；
  熟悉Linux/Unix，熟悉常见关系型数据库，如MySQL、PostgreSQL等;
  熟悉Redis、MemCached等缓存框架;
  熟悉HTML 5、CSS 3、jQuery、Bootstrap及数据库安全知识，并在设 计开发中落地;
  有Java、C++、Python语言编程经验者优先；

  我们的福利待遇#

  15K-20K
  公司为您提供舒适的办公环境；
  按国家规定为每一位正式员工购买五险（养老、医疗、生育、工伤、失业）；公积金
  公司提供餐补，大楼有很优惠的午餐食堂，为你提供方便的用餐环境；
  公司每年组织年度旅游，举办年终活动，节日礼物，公司同事间氛围很友好；
  拥有雄厚的实力、背景 ### 朝九晚五，弹性工作 ，中途享有一小时的就餐时间；五天工作制，五险一金制；带薪法定假，带薪年休假 ###
#},
wage_upper_bound: 20000, wage_lower_bound: 15000, is_hidden: "true", city: "广州", category: "中级", company: "GG"])
puts "第七个工作（Hidden）建立成功."


#puts "这是用种子建立的第x个工作."
#Job.create!([title: "    ", description: %{

#},
#wage_upper_bound: 30000, wage_lower_bound: 15,000, is_hidden: "false"])
#puts "第X个工作（Public）建立成功."
