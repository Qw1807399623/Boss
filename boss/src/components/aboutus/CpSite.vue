<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
		<div class="site">
			<div class="st_title">公司地址</div>
			<div class="st_contxt">
				<img src="../../assets/site.jpg" alt="">
				<div class="txt">
					<div>公司还有9个其他办公地址</div>
					<div>查看全部</div>
				</div>
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
	
	.site{
		margin-bottom: 2rem;
	}
	  
	.site .st_title{
		font-size: 1.3rem;
		display: flex;
		margin-bottom: 0.5rem;
	}
	.st_contxt img{
		width: 100%;
		border-radius: 0.5rem;
		margin-bottom: 0.5rem;
	}
	.st_contxt .txt{
		display: flex;
		justify-content: space-between;
	}
	.st_contxt .txt div:first-child{
		color: #aaa;
	}
	.st_contxt .txt div:last-child{
		color: #555;
	}
</style>
