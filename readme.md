1.调用maven容器对代码进行打包，而宿主机或者jenkins不需要安装任何插件，只要有docker就行
2.通过Jenkinsfile对代码进行各种动作，分别是打包，编译，测试，部署
3.利用pipline以及deploy to container插件（代码实现），再根据tomcat的manager接口进行部署
