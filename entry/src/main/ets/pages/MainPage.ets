import router from '@ohos.router';
import Home from '../view/HomePage'
import Choice from '../view/ChoicePage'
import Mine from '../view/MinePage'

interface TabItem {
  title: string;
  iconSelected: Resource;
  iconNormal: Resource;
}

@Entry
@Component
struct Main {
  private controller: TabsController = new TabsController();
  private items: Array<TabItem> = [
    { title: '首页', iconSelected: $r('app.media.startIcon'), iconNormal: $r('app.media.background') },
    { title: '精选', iconSelected: $r('app.media.startIcon'), iconNormal: $r('app.media.background') },
    { title: '我的', iconSelected: $r('app.media.startIcon'), iconNormal: $r('app.media.background') },
  ]
  @State currentIndex: number = 0;

  // @Builder   装饰器 自定义构建函数
  @Builder
  TabBuilder(title: string, iconSelected: Resource, iconNormal: Resource, index: number) {
    Column() {
      Image(this.currentIndex === index ? iconSelected : iconNormal)
        .width('25vp')
        .height('25vp')
        .margin({bottom: 4})
      Text(title)
        .fontColor(this.currentIndex === index? '#007dee':'#182431')
        .fontSize('14fp')
        .fontWeight(500)
    }
    .width('100%')
  }

  build() {
    Row() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {

          ForEach(this.items, (item: TabItem, index: number) => {

            TabContent() {
              if (index === 0) {
                Home()
              } else if (index === 1) {
                Choice()
              } else {
                Mine()
              }
            }
            .tabBar(this.TabBuilder(item.title, item.iconSelected, item.iconNormal, index))
          })
        }
        .barWidth('100%')
        .barHeight('50vp')
        .vertical(false)
        .animationDuration(400)
        .onChange((index: number) => {
          this.currentIndex = index;
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}