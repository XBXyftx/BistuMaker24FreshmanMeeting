@Entry
@Component
struct Index {
  @State luckyDog: string = '  欢迎来到创客空间！';
  @State random:number=0
  names:string[]=['xax','xbx','xcx','xdx','xex','xfx']
  build() {
    Column({space:30}) {
      Image($rawfile('BistuMaker.png'))
        .width('100%')
        .margin({bottom:20})
      Text(this.luckyDog)
        .fontSize(35)
        .fontColor('#ff0098cf')
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
          if (this.names.length>0) {
            this.random=Math.floor(Math.random()*this.names.length)
            this.luckyDog=this.names[this.random]
            this.names.splice(this.random,1)
          }else {
            this.luckyDog='全抽完了'
          }

        })
      Image($rawfile('ChuangKe.png'))
        .width('80%')
        .margin({top:20})

    }
    .justifyContent(FlexAlign.Center)
    .backgroundImage($rawfile('starSky.jpg'))
    .backgroundImageSize({height:'100%'})
    .height('100%')
    .width('100%')
  }
}