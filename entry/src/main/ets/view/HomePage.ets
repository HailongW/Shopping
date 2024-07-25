import SwiperExample from '../view/components/SwiperExample'

@Component
export default struct Home {
  private message: string = '首页';

  build() {
    Column() {
      SwiperExample()
    }
    .width('100%')
    .height('100%')
  }
}