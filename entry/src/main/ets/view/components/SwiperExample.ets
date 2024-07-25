@Component
export default struct SwiperExample {
  @State swiperData: Array<Resource> = [
    $r('app.media.app_icon'),
    $r('app.media.app_icon'),
    $r('app.media.app_icon'),
  ]

  build() {
    Column() {
      Swiper() {
        ForEach(this.swiperData, (item: Resource) => {
          Image(item)
        })
      }
      .autoPlay(true)
      .interval(3000)
      .duration(2000)
      .itemSpace('20vp')
      .margin({top: '10vp'})
    }.width('95%')
    .height('160vp')
  }
}
