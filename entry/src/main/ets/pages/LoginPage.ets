@Entry
@Component
struct Login {
  @State message: string = '欢迎登录';

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
        TextInput({ placeholder: '请输入密码' })
          .type(InputType.Password)
          .placeholderColor('0x999999')
          .maxLength(6)
          .padding('12vp')
          .margin('10vp')
      }
      .width('100%')

    }
    .height('100%')
  }
}