//导入页面路由模块
import router from '@ohos.router';
import { url } from '@kit.ArkTS';

import promptAction from '@ohos.promptAction';


@Entry
@Component
struct Login {
  @State message: string = '欢迎登录';
  @State user: string = '';
  @State password: string = '';
  private otherData: Array<string> = ['微信', 'QQ', '手机']

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
          .inputStyle()
          .onChange(data => {
            this.user = data
            console.info('user: ' + data)
          })
        TextInput({ placeholder: '请输入密码' })
          .type(InputType.Password)
          .inputStyle()
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
            if (this.user == '' || this.password == '') {
              promptAction.showToast({
                message: '用户名或密码不能为空',
                duration: 3000,
                bottom: '100vp'
              });

            } else {
              //路由跳转
              router.pushUrl({ url: 'pages/MainPage' }).catch((error: Error) => {
                //错误提示
              }
              )
            }
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
          ForEach(this.otherData, (item: string) => {
            Button(item, { type: ButtonType.Circle, stateEffect: true })
              .btnWithStyle()
          }, (item: string) => JSON.stringify(item))
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

//添加公共的样式函数
//@Extend 装饰器 :扩展组件样式
//@Extend(组件描述名称)function 样式名称(){}
@Extend(TextInput)
function inputStyle() {
  .placeholderColor('0x999999')
  .maxLength(6)
  .padding('12vp')
  .margin('10vp')
}

@Extend(Button)
function btnWithStyle() {
  .width('80vp')
  .height('80vp')
}