<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
		<div class="cp_bi">
			<div class="bi">工商信息</div>
			<div class="df">
				<div>公司全称</div>
				<div>腾讯科技(深圳)有限公司</div>
			</div>
			<div class="df">
				<div>企业法人</div>
				<div>马化腾</div>
			</div>
			<div class="df">
				<div>注册资本</div>
				<div>2000-02-24</div>
			</div>
			<div class="df">
				<div>注册资本</div>
				<div>200万美元</div>
			</div>
			<div class="look">
				查看全部
			</div>
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
	
	.cp_bi{
			  margin-bottom: 2rem;
	}
	.bi{
			  font-size: 1.3rem;
			  margin-bottom: 0.5rem;
			  display: flex;
			  justify-content: space-between;
	}
	.cp_bi .df{
			  display: flex;
			  margin-bottom: 0.5rem;
			  justify-content: space-between;
	}
	.cp_bi .df div:first-child{
		color: #777;
	}
	
	.look{
		text-align: right;
		color: #555555;
	}
</style>
