prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>'Pagrindinis'
,p_alias=>'HOME'
,p_step_title=>'Game Shop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211218081609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6995566401599230637)
,p_plug_name=>'Klientai'
,p_icon_css_classes=>'fa-users-alt'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171057692283348342)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6995566776029230640)
,p_plug_name=>unistr('U\017Esakymai')
,p_icon_css_classes=>'fa-file'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171057692283348342)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15685049311893448004)
,p_plug_name=>'Auditas'
,p_icon_css_classes=>'fa-clipboard-list'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171057692283348342)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32171170909623348480)
,p_plug_name=>unistr('Kelioni\0173 Gidas')
,p_icon_css_classes=>'fa-map-marker-face-smile'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171057692283348342)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6995566515638230638)
,p_name=>'Redirect Clients'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6995566401599230637)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6995566698762230639)
,p_event_id=>wwv_flow_api.id(6995566515638230638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6995566866231230641)
,p_name=>'Redirect Orders'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6995566776029230640)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6995567045663230643)
,p_event_id=>wwv_flow_api.id(6995566866231230641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:22:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6995567118178230644)
,p_name=>'Cursor Pointer Orders'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6995566776029230640)
,p_bind_type=>'bind'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6995567206192230645)
,p_event_id=>wwv_flow_api.id(6995567118178230644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6995567308480230646)
,p_name=>'Cursor Default Orders'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6995566776029230640)
,p_bind_type=>'bind'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6995567484180230647)
,p_event_id=>wwv_flow_api.id(6995567308480230646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6995567528750230648)
,p_name=>'Cursor Pointer Clients'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6995566401599230637)
,p_bind_type=>'bind'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6995567608872230649)
,p_event_id=>wwv_flow_api.id(6995567528750230648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15685049437497448005)
,p_name=>'Redirect Audit'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(15685049311893448004)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685049662524448007)
,p_event_id=>wwv_flow_api.id(15685049437497448005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:4:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15685049719548448008)
,p_name=>'Cursor Pointer Auditas'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(15685049311893448004)
,p_bind_type=>'bind'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685049865248448009)
,p_event_id=>wwv_flow_api.id(15685049719548448008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15685049982294448010)
,p_name=>'Cursor Default Auditas'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(15685049311893448004)
,p_bind_type=>'bind'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685050053029448011)
,p_event_id=>wwv_flow_api.id(15685049982294448010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6995567767750230650)
,p_name=>'Cursor Default Clients'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6995566401599230637)
,p_bind_type=>'bind'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7245599376325048201)
,p_event_id=>wwv_flow_api.id(6995567767750230650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_api.component_end;
end;
/
