@Entry
@Component
struct Index {
  @State luckyDog: string = '欢迎来到创客空间！';
  @State random:number=0
  names:string[]=['xax','xbx','xcx','xdx','xex','xfx']

  build() {
    Column({space:20}) {
      Text(this.luckyDog)
        .fontSize(30)
      Button('下一个幸运儿！')
        .onClick(()=>{
          if (this.names.length>0) {
            this.random=Math.floor(Math.random()*this.names.length)
            this.luckyDog=this.names[this.random]
            this.names.splice(this.random,1)
          }else {
            this.luckyDog='全抽完了'
          }

        })

    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }
}