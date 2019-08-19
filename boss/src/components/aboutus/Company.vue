<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
				<auheader/>
		<div class="contanier">
			<div class="bor">
				<audetail/>
			</div>
			<aboutus/>
			<cppic/>
			<cpsite/>
			<cpuccn/>
			<cpbi/>
		</div>
	</div>
</template>

<script>
	// vue 组件:导出默认对象
	import AuHeader from './AuHeader'
	import AuDetail from './AuDetail'
	import AboutUs from './AboutUs'
	import CpPic from './CpPic'
	import CpSite from './CpSite'
	import CpUccn from './CpUccn'
	import CpBI from './CpBI'
	// import AboutUs from 
	export default {
		data(){
			//当前组件共享数据，模块直接读取
			return{
			//默认返回空对象（没数据）
				
			}
		},
		components:{
			'auheader':AuHeader,
			'audetail':AuDetail,
			'aboutus':AboutUs,
			'cppic':CpPic,
			'cpsite':CpSite,
			'cpuccn':CpUccn,
			'cpbi':CpBI
		}
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	.contanier {
	  padding: 0.5rem 0.75rem;
	  font-size: 12px;
	  background: #222;
	  color: #fff; }
	  .bor{
		  margin-bottom: 2rem;
	  }
</style>
