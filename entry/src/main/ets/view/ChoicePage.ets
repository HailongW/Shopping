@Component
export default struct Choice {
  private  message: string = '精选';

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