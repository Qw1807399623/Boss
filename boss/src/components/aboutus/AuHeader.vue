<template>
	<div class="auheader">
		<div class="au_h_lf"><img src="../../assets/zuojiankuohao.png" alt=""></div>
		<div class="au_h_rg">
			<div class="concern" v-show="!isconcern"  @click="attin">+ 关注</div>
			<div class="concern" v-show="isconcern"  @click="attout">已关注</div>
			<div class="father" @click="isreport=!isreport">
				<img src="../../assets/省略号.png">
				<div class="son"  v-show="!isreport">举报</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default{
		data(){
			return{
				i:0,
				isconcern:false,
				isreport:true
			}
		},
		methods:{
			attin(){
				this.isconcern=true,
				this.$toast({
					message:'关注成功',
					position:'bottom'
				})
			},
			attout(){
				this.isconcern=false,
				this.$toast({
					message:'取消关注成功',
					position:'bottom'
				})
			}
		}
	}
</script>

<style scoped>
	 .auheader {
		   padding: 0.5rem 0.75rem;
		   font-size: 12px;
		   background: #222;
		   color: #fff; 
		 position: fixed;
		 width: 94%;
		 background-color: #222;
	  display: flex;
	  justify-content: space-between;
	  align-items: center; }
	   .auheader .au_h_rg {
	    display: flex;
	    justify-content: space-between;
	    align-items: center; }
	     .auheader .au_h_rg .concern {
	      font-size: 0.75rem;
	      border: 1px solid #fff;
	      padding: 0.25rem;
	      border-radius: 0.25rem;
	      margin-right: 1rem; }
	     .auheader .au_h_rg .father {
			  position: relative;}
	     .auheader .au_h_rg .father .son{
			  left: -20px;
			  width: 50px;
			  position: absolute;
			  }
</style>
