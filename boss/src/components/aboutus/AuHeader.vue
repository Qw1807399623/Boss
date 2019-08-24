<template>
	<div class="auheader">
		<div class="au_h_lf">
<<<<<<< HEAD
			<img src="../../assets/zuojiankuohao.png" @click="goback">
			<span v-show="y>111">{{list.cname}}</span></div>
=======
			<span @click="back"><img src="../../assets/zuojiankuohao.png" alt=""></span>
			<span v-show="y>111">腾讯</span></div>
>>>>>>> 0d802abfaff034dcf0650493bdd6f343b7a6eb32
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
				isreport:true,
				y:0
			}
		},
		props:['list'],
		methods:{
<<<<<<< HEAD
			goback(){
				window.history.go(-1);
=======
			back(){
				this.$router.go(-1)
>>>>>>> 0d802abfaff034dcf0650493bdd6f343b7a6eb32
			},
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
		},
      mounted(){
		  window.onscroll = ()=>{
			  var y=window.scrollY;
			  this.y=y;
		  }
      }
	}
</script>

<style scoped>
	 .auheader {
		z-index: 2;
		padding: 0.5rem 0.75rem;
		font-size: 1.25rem;
		color: #fff; 
		position: fixed;
		box-sizing: border-box;
		top: 0px;
		width: 100%;
		background-color: rgba(0,0,0,0.9);
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
