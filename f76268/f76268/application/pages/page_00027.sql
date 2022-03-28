prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>41384264076266073471
,p_default_application_id=>76268
,p_default_id_offset=>0
,p_default_owner=>'WKSP_IDEWORK'
);
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>unistr('U\017Esakym\0173 Kalendorius')
,p_alias=>unistr('U\017DSAKYM\0172-KALENDORIUS')
,p_step_title=>unistr('U\017Esakym\0173 Kalendorius')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211029074156'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7048242637957326859)
,p_plug_name=>unistr('U\017Esakym\0173 Kalendorius')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(32171067494266348346)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.id, c.name || '' - '' || c.username|| ''<br> ( '' ||os.status || '' )'', ',
'o.order_submission_date,',
'o.order_end_date',
'from orders o, clients c, order_statuses os ',
'where c.id = o.client_id ',
'and os.id = o.order_status_id'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'ORDER_SUBMISSION_DATE'
,p_attribute_02=>'ORDER_END_DATE'
,p_attribute_03=>'C.NAME||''-''||C.USERNAME||''<BR>(''||OS.STATUS||'')'''
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:P28_ID:&ID.'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders',
'set order_submission_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
'order_end_date = to_date(:APEX$NEW_END_DATE,''YYYYMMDDHH24MISS'')',
'where id = :APEX$PK_VALUE;',
'--null;'))
,p_attribute_09=>'list:navigation'
,p_attribute_10=>'CSV:ICAL:XML'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6995565920356230632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7048242637957326859)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171131938534348379)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
