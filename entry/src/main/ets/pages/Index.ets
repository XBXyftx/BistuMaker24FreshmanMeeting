@Entry
@Component
struct Index {
  @State luckyDog: string = 'Hello World';
  @State random:number=0
  names:string[]=['xax','xbx','xcx','xdx']

  build() {
    RelativeContainer() {
      Text(this.luckyDog)
        .fontSize(30)
      Button('下一个幸运儿！')

    }
    .height('100%')
    .width('100%')
  }
}