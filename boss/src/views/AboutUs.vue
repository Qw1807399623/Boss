<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
		<div class="contanier">
			<auheader/>
			<div class="au_detail">
				<div class="au_title">
					<div class="au_dt_lf">
						<div class="au_dt_tit">腾讯</div>
						<div class="au_dt_stit">已上市·10000人以上·互联网</div>
					</div>
					<div class="au_dt_rg">
						<img src="../assets/logo.png" alt="" style="width: 40px;height: 40px;">
					</div>
				</div>
				<div class="au_boon">
					<div class="au_b_lf">
						<div>
						<img src="../assets/utimeclock.png" alt="">&nbsp;&nbsp;上午09:30-下午06:30
						</div>
						<div>
							<img src="../assets/rili.png" alt="">双休
							<img src="../assets/shoutixiang.png" alt="">弹性工作
						</div>
					</div>
					<div class="au_b_rg">
						更多福利
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	// vue 组件:导出默认对象
	import AuHeader from './AuHeader'
	export default {
		data(){
			//当前组件共享数据，模块直接读取
			return{
			//默认返回空对象（没数据）
				
			}
		},
		components:{
			'auheader':AuHeader
		}
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	@import url("../../public/css/AboutUs.css");
</style>
