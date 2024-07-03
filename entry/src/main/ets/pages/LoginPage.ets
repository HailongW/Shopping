@Entry
@Component
struct Login {
  @State message: string = '欢迎登录';
  @State user: string = '';
  @State password: string = '';

  build() {
    Row() {
      Column() {
        Image($r('app.media.startIcon'))
          .width('80vp')
          .height('80vp')
          .margin({ bottom: '20vp' })

        Text(this.message)
          .fontSize('30fp')
          .fontWeight(FontWeight.Bold)
        TextInput({ placeholder: '请输入用户名' })
          .placeholderColor('0x999999')
          .maxLength(6)
          .padding('12vp')
          .margin('10vp')
          .onChange(data => {
            this.user = data
            console.info('user: ' + data)
          })
        TextInput({ placeholder: '请输入密码' })
          .type(InputType.Password)
          .placeholderColor('0x999999')
          .maxLength(6)
          .padding('12vp')
          .margin('10vp')
          .onChange(data => {
            this.password = data
            console.info('pwd: ' + data)
          })
        Row() {
          Text('短信验证码登录')
            .fontSize('10fp')
            .fontColor(Color.Blue)
          Text('忘记密码')
            .fontSize('10fp')
            .fontColor(Color.Blue)
        }
        .width('90%')
        .justifyContent(FlexAlign.SpaceBetween)

        Button('登录', { type: ButtonType.Capsule, stateEffect: true })
          .width('90%')
          .margin({ top: '20vp' })
          .onClick(() => {
            //具体逻辑
          })

        Row() {
          Text('其他登录方式')
            .fontSize('10fp')
            .fontColor(Color.Blue)
        }
        .width('90%')
        .justifyContent(FlexAlign.Center)
        .margin({ top: '20vp' })

        Row() {
          Button('微信', { type: ButtonType.Circle, stateEffect: true })
            .width('80vp')
            .height('80vp')
          Button('QQ', { type: ButtonType.Circle, stateEffect: true })
            .width('80vp')
            .height('80vp')
          Button('手机', { type: ButtonType.Circle, stateEffect: true })
            .width('80vp')
            .height('80vp')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
        .margin({ top: '20vp' })
      }
      .width('100%')

    }
    .height('100%')
  }
}