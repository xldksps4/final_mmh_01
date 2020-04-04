package com.idea.mmh.model.dto;

import java.util.Date;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class PayDto {
	private String tid;
	private String next_redirect_app_url;
	private String next_redirect_mobile_url;
	private String next_redirect_pc_url;
	private String android_app_scheme;
	private String ios_app_scheme;
	private Date created_at;
	private String cid;
	private String cid_secret;
	private String partner_order_id;
	private String partner_user_id;
	private String item_name;
	private String item_code;
	private int quantity;
	private int total_amount;
	private int tax_free_amount;
	private int vat_amount;
	private String approval_url;
	private String cancel_url;
	private String fail_url;
	private JSONArray available_cards;
	private String payment_method_type;
	private int install_month;
	private String custom_json;
	private String aid;
	private String sid;
	private JSONObject amount;
	private JSONObject card_info;
	private Date approved_at;
	private String payload;
	private int total;
	private int tax_free;
	private int vat;
	private int point;
	private int discount;
	private String purchase_corp;
	private String purchase_corp_code;
	private String issuer_corp;
	private String issuer_corp_code;
	private String kakaopay_purchase_corp;
	private String kakaopay_purchase_corp_code;
	private String kakaopay_issuer_corp;
	private String kakaopay_issuer_corp_code;
	private String bin;
	private String card_type;
	private String approved_id;
	private String card_mid;
	private String interest_free_install;
	private String card_item_code;
	private String pay_param;

	public String getPay_param() {
		return pay_param;
	}
	public void setPay_param(String pay_param) {
		this.pay_param = pay_param;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public JSONObject getAmount() {
		return amount;
	}
	public void setAmount(JSONObject amount) {
		this.amount = amount;
	}
	public JSONObject getCard_info() {
		return card_info;
	}
	public void setCard_info(JSONObject card_info) {
		this.card_info = card_info;
	}
	public Date getApproved_at() {
		return approved_at;
	}
	public void setApproved_at(Date approved_at) {
		this.approved_at = approved_at;
	}
	public String getPayload() {
		return payload;
	}
	public void setPayload(String payload) {
		this.payload = payload;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTax_free() {
		return tax_free;
	}
	public void setTax_free(int tax_free) {
		this.tax_free = tax_free;
	}
	public int getVat() {
		return vat;
	}
	public void setVat(int vat) {
		this.vat = vat;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getPurchase_corp() {
		return purchase_corp;
	}
	public void setPurchase_corp(String purchase_corp) {
		this.purchase_corp = purchase_corp;
	}
	public String getPurchase_corp_code() {
		return purchase_corp_code;
	}
	public void setPurchase_corp_code(String purchase_corp_code) {
		this.purchase_corp_code = purchase_corp_code;
	}
	public String getIssuer_corp() {
		return issuer_corp;
	}
	public void setIssuer_corp(String issuer_corp) {
		this.issuer_corp = issuer_corp;
	}
	public String getIssuer_corp_code() {
		return issuer_corp_code;
	}
	public void setIssuer_corp_code(String issuer_corp_code) {
		this.issuer_corp_code = issuer_corp_code;
	}
	public String getKakaopay_purchase_corp() {
		return kakaopay_purchase_corp;
	}
	public void setKakaopay_purchase_corp(String kakaopay_purchase_corp) {
		this.kakaopay_purchase_corp = kakaopay_purchase_corp;
	}
	public String getKakaopay_purchase_corp_code() {
		return kakaopay_purchase_corp_code;
	}
	public void setKakaopay_purchase_corp_code(String kakaopay_purchase_corp_code) {
		this.kakaopay_purchase_corp_code = kakaopay_purchase_corp_code;
	}
	public String getKakaopay_issuer_corp() {
		return kakaopay_issuer_corp;
	}
	public void setKakaopay_issuer_corp(String kakaopay_issuer_corp) {
		this.kakaopay_issuer_corp = kakaopay_issuer_corp;
	}
	public String getKakaopay_issuer_corp_code() {
		return kakaopay_issuer_corp_code;
	}
	public void setKakaopay_issuer_corp_code(String kakaopay_issuer_corp_code) {
		this.kakaopay_issuer_corp_code = kakaopay_issuer_corp_code;
	}
	public String getBin() {
		return bin;
	}
	public void setBin(String bin) {
		this.bin = bin;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public String getApproved_id() {
		return approved_id;
	}
	public void setApproved_id(String approved_id) {
		this.approved_id = approved_id;
	}
	public String getCard_mid() {
		return card_mid;
	}
	public void setCard_mid(String card_mid) {
		this.card_mid = card_mid;
	}
	public String getInterest_free_install() {
		return interest_free_install;
	}
	public void setInterest_free_install(String interest_free_install) {
		this.interest_free_install = interest_free_install;
	}
	public String getCard_item_code() {
		return card_item_code;
	}
	public void setCard_item_code(String card_item_code) {
		this.card_item_code = card_item_code;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCid_secret() {
		return cid_secret;
	}
	public void setCid_secret(String cid_secret) {
		this.cid_secret = cid_secret;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public int getTax_free_amount() {
		return tax_free_amount;
	}
	public void setTax_free_amount(int tax_free_amount) {
		this.tax_free_amount = tax_free_amount;
	}
	public int getVat_amount() {
		return vat_amount;
	}
	public void setVat_amount(int vat_amount) {
		this.vat_amount = vat_amount;
	}
	public String getApproval_url() {
		return approval_url;
	}
	public void setApproval_url(String approval_url) {
		this.approval_url = approval_url;
	}
	public String getCancel_url() {
		return cancel_url;
	}
	public void setCancel_url(String cancel_url) {
		this.cancel_url = cancel_url;
	}
	public String getFail_url() {
		return fail_url;
	}
	public void setFail_url(String fail_url) {
		this.fail_url = fail_url;
	}
	public JSONArray getAvailable_cards() {
		return available_cards;
	}
	public void setAvailable_cards(JSONArray available_cards) {
		this.available_cards = available_cards;
	}
	public String getPayment_method_type() {
		return payment_method_type;
	}
	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}
	public int getInstall_month() {
		return install_month;
	}
	public void setInstall_month(int install_month) {
		this.install_month = install_month;
	}
	public String getCustom_json() {
		return custom_json;
	}
	public void setCustom_json(String custom_json) {
		this.custom_json = custom_json;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getNext_redirect_app_url() {
		return next_redirect_app_url;
	}
	public void setNext_redirect_app_url(String next_redirect_app_url) {
		this.next_redirect_app_url = next_redirect_app_url;
	}
	public String getNext_redirect_mobile_url() {
		return next_redirect_mobile_url;
	}
	public void setNext_redirect_mobile_url(String next_redirect_mobile_url) {
		this.next_redirect_mobile_url = next_redirect_mobile_url;
	}
	public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public String getAndroid_app_scheme() {
		return android_app_scheme;
	}
	public void setAndroid_app_scheme(String android_app_scheme) {
		this.android_app_scheme = android_app_scheme;
	}
	public String getIos_app_scheme() {
		return ios_app_scheme;
	}
	public void setIos_app_scheme(String ios_app_scheme) {
		this.ios_app_scheme = ios_app_scheme;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	
}
