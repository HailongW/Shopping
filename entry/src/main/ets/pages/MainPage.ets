import router from '@ohos.router';

@Entry
@Component
struct Main {
  build() {
    Row() {
      Column(){
        Text('首页')
        Button('返回登录页', { type: ButtonType.Capsule, stateEffect: true })
          .width('90%')
          .margin({ top: '20vp' })
          .onClick(() => {
            //路由跳转
            // router.pushUrl({ url: 'pages/LoginPage' }).catch((error: Error) => {
            //   //错误提示
            // }
            // )
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}