<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div class="aboutUs">
		<div class="au_title">公司介绍</div>
		<div class="au_text">
			<p>深圳市腾讯计算机系统有限公司成立于1998年11月，由马化腾、张志东、许晨晔、陈一丹、曾李青五位创始人共同创立。是中国最大的互联网综合服务提供商之一，也是中国服务用户最多的互联网企业之一。</p>
			<p>腾讯多元化的服务包括：社交和通信服务QQ及微信/WeChat、社交网络平台QQ空间、腾讯游戏旗下QQ游戏平台、门户网站腾讯网、腾讯新闻客户端和网络视频服务腾讯视频等。</p>
			<p>2004年腾讯公司在香港联交所主板公开上市（股票代号00700），董事会主席兼首席执行官是马化腾。</p>
		</div>
	</div>
</template>

<script>
	// vue 组件:导出默认对象
	export default {
		data(){
			//当前组件共享数据，模块直接读取
			return{
			//默认返回空对象（没数据）
				
			}
		}
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	.aboutUs{
		margin-bottom: 2.5rem;
	}
	.aboutUs .au_title{
		font-size: 1.3rem;
		margin-bottom: 0.5rem;
		display: flex;
	}
	.aboutUs .au_text{
		font-size: 0.9rem;
		text-align: left;
	}
</style>
