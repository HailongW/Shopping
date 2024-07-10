@Component
export default struct Home {
  private  message: string = '首页';

  build() {
    Row() {
      Column() {
        Text(this.message)
      }
      .width('100%')
    }
    .height('100%')
  }
}