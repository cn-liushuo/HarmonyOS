// Index.ets
// 导入页面路由模块
import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World' // 定义一个变量，内容为'Hello World'

  build() {
    Row() { // 沿水平方向布局的容器
      Column() { // 沿垂直方向布局的容器
        Text(this.message)// 显示一段文本的组件，括号内为文本内容
          .fontSize(50)// 字体大小
          .fontWeight(FontWeight.Bold) // 字体粗细
        // 添加按钮，以响应用户点击
        Button() {
          Text('Next')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          // 外边距属性
          top: 20
        })
        .backgroundColor('#0D9FFB') // 背景颜色
        .width('40%') // 按钮的宽度
        .height('5%') // 按钮的高度
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)
          //   跳转到第二页
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err: BusinessError) => {
            console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%') // Column宽度
    }
    .height('100%') // Row高度
  }
}