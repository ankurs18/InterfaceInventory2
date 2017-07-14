package com.acc.interfaceinventory.entity;

import java.sql.Date;

public class Service {

	private String source_inventory, interfacename, description, interface_category, business_function, business_process, segment, lob, entities_exchange, connection_method, transport, connection_frequency, data_format, provider_technology, r1_disposition, r2_disposition, asynch_synch, service_provider, pattern, interface_complexity, provider_detail, steel_thread, modified_comment;
	private boolean scope_r1, scope_r2;
	private Date last_modification;
	private int id;
	public String getSource_inventory() {
		return source_inventory;
	}
	public String getInterfacename() {
		return interfacename;
	}
	public String getDescription() {
		return description;
	}
	public String getInterface_category() {
		return interface_category;
	}
	public String getBusiness_function() {
		return business_function;
	}
	public String getBusiness_process() {
		return business_process;
	}
	public String getSegment() {
		return segment;
	}
	public String getLob() {
		return lob;
	}
	public String getEntities_exchange() {
		return entities_exchange;
	}
	public String getConnection_method() {
		return connection_method;
	}
	public String getTransport() {
		return transport;
	}
	public String getConnection_frequency() {
		return connection_frequency;
	}
	public String getData_format() {
		return data_format;
	}
	public String getProvider_technology() {
		return provider_technology;
	}
	public String getR1_disposition() {
		return r1_disposition;
	}
	public String getR2_disposition() {
		return r2_disposition;
	}
	public String getAsynch_synch() {
		return asynch_synch;
	}
	public String getService_provider() {
		return service_provider;
	}
	public String getPattern() {
		return pattern;
	}
	public String getInterface_complexity() {
		return interface_complexity;
	}
	public String getProvider_detail() {
		return provider_detail;
	}
	public String getSteel_thread() {
		return steel_thread;
	}
	public String getModified_comment() {
		return modified_comment;
	}
	public boolean isScope_r1() {
		return scope_r1;
	}
	public boolean isScope_r2() {
		return scope_r2;
	}
	public Date getLast_modification() {
		return last_modification;
	}
	public int getId() {
		return id;
	}
	public void setSource_inventory(String source_inventory) {
		this.source_inventory = source_inventory;
	}
	public void setInterfacename(String interfacename) {
		this.interfacename = interfacename;
	}
	@Override
	public String toString() {
		return "Service [source_inventory=" + source_inventory + ", interfacename=" + interfacename + ", description="
				+ description + ", interface_category=" + interface_category + ", business_function="
				+ business_function + ", business_process=" + business_process + ", segment=" + segment + ", lob=" + lob
				+ ", entities_exchange=" + entities_exchange + ", connection_method=" + connection_method
				+ ", transport=" + transport + ", connection_frequency=" + connection_frequency + ", data_format="
				+ data_format + ", provider_technology=" + provider_technology + ", r1_disposition=" + r1_disposition
				+ ", r2_disposition=" + r2_disposition + ", asynch_synch=" + asynch_synch + ", service_provider="
				+ service_provider + ", pattern=" + pattern + ", interface_complexity=" + interface_complexity
				+ ", provider_detail=" + provider_detail + ", steel_thread=" + steel_thread + ", modified_comment="
				+ modified_comment + ", scope_r1=" + scope_r1 + ", scope_r2=" + scope_r2 + ", last_modification="
				+ last_modification + ", id=" + id + "]";
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setInterface_category(String interface_category) {
		this.interface_category = interface_category;
	}
	public void setBusiness_function(String business_function) {
		this.business_function = business_function;
	}
	public void setBusiness_process(String business_process) {
		this.business_process = business_process;
	}
	public void setSegment(String segment) {
		this.segment = segment;
	}
	public void setLob(String lob) {
		this.lob = lob;
	}
	public void setEntities_exchange(String entities_exchange) {
		this.entities_exchange = entities_exchange;
	}
	public void setConnection_method(String connection_method) {
		this.connection_method = connection_method;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public void setConnection_frequency(String connection_frequency) {
		this.connection_frequency = connection_frequency;
	}
	public void setData_format(String data_format) {
		this.data_format = data_format;
	}
	public void setProvider_technology(String provider_technology) {
		this.provider_technology = provider_technology;
	}
	public void setR1_disposition(String r1_disposition) {
		this.r1_disposition = r1_disposition;
	}
	public void setR2_disposition(String r2_disposition) {
		this.r2_disposition = r2_disposition;
	}
	public void setAsynch_synch(String asynch_synch) {
		this.asynch_synch = asynch_synch;
	}
	public void setService_provider(String service_provider) {
		this.service_provider = service_provider;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
	public void setInterface_complexity(String interface_complexity) {
		this.interface_complexity = interface_complexity;
	}
	public void setProvider_detail(String provider_detail) {
		this.provider_detail = provider_detail;
	}
	public void setSteel_thread(String steel_thread) {
		this.steel_thread = steel_thread;
	}
	public void setModified_comment(String modified_comment) {
		this.modified_comment = modified_comment;
	}
	public void setScope_r1(boolean scope_r1) {
		this.scope_r1 = scope_r1;
	}
	public void setScope_r2(boolean scope_r2) {
		this.scope_r2 = scope_r2;
	}
	public void setLast_modification(Date last_modification) {
		this.last_modification = last_modification;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Service(String source_inventory, String interfacename, String description, String interface_category,
			String business_function, String business_process, String segment, String lob, String entities_exchange,
			String connection_method, String transport, String connection_frequency, String data_format,
			String provider_technology, String r1_disposition, String r2_disposition, String asynch_synch,
			String service_provider, String pattern, String interface_complexity, String provider_detail,
			String steel_thread, String modified_comment, boolean scope_r1, boolean scope_r2, Date last_modification,
			int id) {
		super();
		this.source_inventory = source_inventory;
		this.interfacename = interfacename;
		this.description = description;
		this.interface_category = interface_category;
		this.business_function = business_function;
		this.business_process = business_process;
		this.segment = segment;
		this.lob = lob;
		this.entities_exchange = entities_exchange;
		this.connection_method = connection_method;
		this.transport = transport;
		this.connection_frequency = connection_frequency;
		this.data_format = data_format;
		this.provider_technology = provider_technology;
		this.r1_disposition = r1_disposition;
		this.r2_disposition = r2_disposition;
		this.asynch_synch = asynch_synch;
		this.service_provider = service_provider;
		this.pattern = pattern;
		this.interface_complexity = interface_complexity;
		this.provider_detail = provider_detail;
		this.steel_thread = steel_thread;
		this.modified_comment = modified_comment;
		this.scope_r1 = scope_r1;
		this.scope_r2 = scope_r2;
		this.last_modification = last_modification;
		this.id = id;
	}
}
