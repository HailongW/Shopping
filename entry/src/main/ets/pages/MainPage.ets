import router from '@ohos.router';
import Home from '../view/HomePage'
import Choice from '../view/ChoicePage'
import Mine from '../view/MinePage'

interface TabItem {
  title: string;
}

@Entry
@Component
struct Main {
  private controller: TabsController = new TabsController();
  private items: Array<TabItem> = [
    { title: '首页' },
    { title: '精选' },
    { title: '我的' },
  ]

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
            .tabBar(item.title)
          })
        }
        .barWidth('100%')
        .barHeight('50vp')
        .vertical(false)
        .animationDuration(400)
      }
      .width('100%')
    }
    .height('100%')
  }
}