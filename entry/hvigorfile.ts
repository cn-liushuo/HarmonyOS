// 模块级编译构建任务脚本
import { hapTasks } from '@ohos/hvigor-ohos-plugin';

export default {
    system: hapTasks,  /* Built-in plugin of Hvigor. It cannot be modified. */
    plugins:[]         /* Custom plugin to extend the functionality of Hvigor. */
}
