@Component
export default struct Mine {
  private  message: string = '我的';

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
