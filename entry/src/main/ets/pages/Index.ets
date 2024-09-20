@Entry
@Component
struct Index {
  names:string[]=['乔越', '翟嘉伟', '杨震宇', '李同', '陈文博', '李昊霖', '刘粟丰', '李思瑾', '徐健超', '王鹏程', '项群山', '李钇兴', '董新萍', '付雅雯', '方华德', '陈著源', '袁伟琪', '李婧', '朱睿妍', '高泽宇', '罗林', '杨国彬', '魏博文', '林鑫玥', '李东骏', '冯滢宇', '靳能宇', '严梽伦', '宋博文', '李泽昊', '赵云龙', '郝津仪', '王瑛祺', '刘博文', '张颖', '卜千帆', '孙博辰', '张彤', '唐琮杰', '刘省三', '魏琦佳', '赖亚威', '李标康', '王东泽', '鲁先珩', '李思玚', '王子澳', '陈默', '刘易恒', '许昊然', '吕法辉', '黄文睿', '倪子宸', '黄天昊', '马梦缘', '褚嘉骐', '陈博文', '杨浩然', '张馨瑶', '李佳澎', '谈虹', '刘心婧', '彭馨', '王语璨', '王秋阳', '崔天麒', '刘天一', '孟庆隆', '王萌', '汪睿涵', '李思湉', '高梦杰', '陈逸天', '常小北', '程鑫涛', '马瑞含', '陈柏宇', '董雨瑄', '吴海鑫', '吕宏涛', '张炜婉', '白然', '骆昕', '时美琴', '王钰杉', '刘宝莹', '孙浩', '傅一为', '王经翔', '汪滢华', '任炳羽', '李阳', '杨昀潼', '陈馨颖', '李方然', '李天乐', '金盛荃', '胡琪', '何伟琪', '吴雨嫣', '段祉安', '郑凯文', '沈千策', '刘博', '汤耀月', '谢青芯', '张依梵', '李姗珊', '刘佳一', '白梓涵', '崔耘硕', '车国蓉', '毛鹤然', '刘鑫', '朱建东', '魏彦西', '武博研', '张智淼', '程子为', '柴沅昔', '崔一']
  @State luckyDog: string = '  欢迎来到创客空间！';
  @State random:number=0
  @State fontSize:number = 35
  @State isShow:boolean = false
  @State numSelected:number = 0
  build() {
    Column({space:30}) {
      if (this.isShow){
        Text(`已抽${this.numSelected}人`)
          .fontColor('#ff0098cf')
          .fontSize(30)
          .fontWeight(700)
      }
      Image($rawfile('BistuMaker.png'))
        .width('100%')
        .margin({bottom:20})
      Text(this.luckyDog)
        .fontSize(this.fontSize)
        .height(100)
        .fontColor('#ff6dffff')
        .fontWeight(700)
      Text('  抽到的人来自我介绍哦！')
        .fontSize(25)
        .fontColor('#ffffffff')
        .fontWeight(500)
      Button('抽取下一个幸运儿！')
        .backgroundColor('#490098cf')
        .fontSize(20)
        .padding({top:10,bottom:10,left:25,right:25})
        .onClick(()=>{

          this.fontSize = 100
          if (this.names.length>0) {
            this.random=Math.floor(Math.random()*this.names.length)
            this.luckyDog=this.names[this.random]
            this.names.splice(this.random,1)
            this.numSelected++
            this.isShow=true
          }else {
            this.luckyDog='全抽完了'
          }

        })
      Image($rawfile('ChuangKe.png'))
        .width('80%')
        .margin({top:20})

    }
    .expandSafeArea()
    .justifyContent(FlexAlign.Center)
    .backgroundImage($rawfile('starSky.jpg'))
    .backgroundImageSize({height:'100%'})
    .height('100%')
    .width('100%')
  }
}