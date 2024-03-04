package com.entity.view;

import com.entity.GoodsLiuyanEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 评价
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("goods_liuyan")
public class GoodsLiuyanView extends GoodsLiuyanEntity implements Serializable {
    private static final long serialVersionUID = 1L;




		//级联表 goods
			/**
			* 展柜名称
			*/
			private String goodsName;
			/**
			* 展柜类型
			*/
			private Integer goodsTypes;
				/**
				* 展柜类型的值
				*/
				private String goodsValue;
			/**
			* 展柜图片
			*/
			private String goodsPhoto;
			/**
			* 品牌
			*/
			private String goodsPinpai;
			/**
			* 价格
			*/
			private Double goodsNewMoney;
			/**
			* 材质
			*/
			private String goodsCaizhi;
			/**
			* 附加功能
			*/
			private String goodsFujia;
			/**
			* 产地
			*/
			private String goodsCandi;
			/**
			* 详情
			*/
			private String goodsContent;

		//级联表 yonghu
			/**
			* 用户姓名
			*/
			private String yonghuName;
			/**
			* 身份证号
			*/
			private String yonghuIdNumber;
			/**
			* 手机号
			*/
			private String yonghuPhone;
			/**
			* 余额
			*/
			private Double newMoney;
			/**
			* 照片
			*/
			private String yonghuPhoto;

	public GoodsLiuyanView() {

	}

	public GoodsLiuyanView(GoodsLiuyanEntity goodsLiuyanEntity) {
		try {
			BeanUtils.copyProperties(this, goodsLiuyanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}













				//级联表的get和set goods
					/**
					* 获取： 展柜名称
					*/
					public String getGoodsName() {
						return goodsName;
					}
					/**
					* 设置： 展柜名称
					*/
					public void setGoodsName(String goodsName) {
						this.goodsName = goodsName;
					}
					/**
					* 获取： 展柜类型
					*/
					public Integer getGoodsTypes() {
						return goodsTypes;
					}
					/**
					* 设置： 展柜类型
					*/
					public void setGoodsTypes(Integer goodsTypes) {
						this.goodsTypes = goodsTypes;
					}


						/**
						* 获取： 展柜类型的值
						*/
						public String getGoodsValue() {
							return goodsValue;
						}
						/**
						* 设置： 展柜类型的值
						*/
						public void setGoodsValue(String goodsValue) {
							this.goodsValue = goodsValue;
						}
					/**
					* 获取： 展柜图片
					*/
					public String getGoodsPhoto() {
						return goodsPhoto;
					}
					/**
					* 设置： 展柜图片
					*/
					public void setGoodsPhoto(String goodsPhoto) {
						this.goodsPhoto = goodsPhoto;
					}
					/**
					* 获取： 品牌
					*/
					public String getGoodsPinpai() {
						return goodsPinpai;
					}
					/**
					* 设置： 品牌
					*/
					public void setGoodsPinpai(String goodsPinpai) {
						this.goodsPinpai = goodsPinpai;
					}
					/**
					* 获取： 价格
					*/
					public Double getGoodsNewMoney() {
						return goodsNewMoney;
					}
					/**
					* 设置： 价格
					*/
					public void setGoodsNewMoney(Double goodsNewMoney) {
						this.goodsNewMoney = goodsNewMoney;
					}
					/**
					* 获取： 材质
					*/
					public String getGoodsCaizhi() {
						return goodsCaizhi;
					}
					/**
					* 设置： 材质
					*/
					public void setGoodsCaizhi(String goodsCaizhi) {
						this.goodsCaizhi = goodsCaizhi;
					}
					/**
					* 获取： 附加功能
					*/
					public String getGoodsFujia() {
						return goodsFujia;
					}
					/**
					* 设置： 附加功能
					*/
					public void setGoodsFujia(String goodsFujia) {
						this.goodsFujia = goodsFujia;
					}
					/**
					* 获取： 产地
					*/
					public String getGoodsCandi() {
						return goodsCandi;
					}
					/**
					* 设置： 产地
					*/
					public void setGoodsCandi(String goodsCandi) {
						this.goodsCandi = goodsCandi;
					}
					/**
					* 获取： 详情
					*/
					public String getGoodsContent() {
						return goodsContent;
					}
					/**
					* 设置： 详情
					*/
					public void setGoodsContent(String goodsContent) {
						this.goodsContent = goodsContent;
					}













				//级联表的get和set yonghu
					/**
					* 获取： 用户姓名
					*/
					public String getYonghuName() {
						return yonghuName;
					}
					/**
					* 设置： 用户姓名
					*/
					public void setYonghuName(String yonghuName) {
						this.yonghuName = yonghuName;
					}
					/**
					* 获取： 身份证号
					*/
					public String getYonghuIdNumber() {
						return yonghuIdNumber;
					}
					/**
					* 设置： 身份证号
					*/
					public void setYonghuIdNumber(String yonghuIdNumber) {
						this.yonghuIdNumber = yonghuIdNumber;
					}
					/**
					* 获取： 手机号
					*/
					public String getYonghuPhone() {
						return yonghuPhone;
					}
					/**
					* 设置： 手机号
					*/
					public void setYonghuPhone(String yonghuPhone) {
						this.yonghuPhone = yonghuPhone;
					}
					/**
					* 获取： 余额
					*/
					public Double getNewMoney() {
						return newMoney;
					}
					/**
					* 设置： 余额
					*/
					public void setNewMoney(Double newMoney) {
						this.newMoney = newMoney;
					}
					/**
					* 获取： 照片
					*/
					public String getYonghuPhoto() {
						return yonghuPhoto;
					}
					/**
					* 设置： 照片
					*/
					public void setYonghuPhoto(String yonghuPhoto) {
						this.yonghuPhoto = yonghuPhoto;
					}



}
