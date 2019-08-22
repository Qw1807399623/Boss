<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div style="background: #ccc;">
		<div class="container" v-for='(task,i) of 15' :key='i'>
			<div class="img">
				<img src="../assets/txlogo.jpg" alt="">
			</div>
			<div class="contxt">
				<h4>腾讯</h4>
				<div class="site">广州市 天河区 棠下</div>
				<div class="state">
					<span>已上市</span>
					<span>10000人以上 </span>
					<span>互联网</span>
				</div>
				<hr>
				<div class="hot">
					<div>热招: <span>WXG03-微信开放平台前</span>等3981职位</div>
					<router-link :to='`/Company`'><img src="../assets/向右尖括号.png" /></router-link>
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
	h4{
		margin: 0.5rem 0;
		font-size: 1.25rem;
	}
	img{
		width: 50px;
	}
	hr{
		background: #eee;
		width: 95%;
		margin: 1rem 0;
		float: left;
		height: 1px;
		border: none;
	}
	.container{
		display: flex;
		background: #fff;
		font-size: 12px;
		margin-bottom: 5px;
	}
	.container .img{
		width: 16.67%;
		max-width: 16.67%;
		overflow: hidden;
	}
	.container .contxt{
		width: 83.33%;
		max-width: 83.33%;
		text-align: left;
	}
	.contxt .site{
		margin-bottom: 0.5rem;
	}
	.contxt .state >span{
		background: #ddd;
		border-radius: 3px;
		padding: 3px;
		margin:0 0.5rem 0.5rem 0;
	}
	.contxt .hot{
		width: 95%; 
		margin: 1rem 0;
		display: flex;
		justify-content: space-between;
		clear: both;
	}
	.contxt .hot span{
		color: #5DD5C8;
	}
	.contxt .hot img{
		width: 10px;
		text-align: right;
	}
	
</style>
