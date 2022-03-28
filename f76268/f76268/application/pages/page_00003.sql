prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>'Klientas'
,p_alias=>'KLIENTAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Klientas'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211126090414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227980971822665309)
,p_plug_name=>'Klientas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171036412868348331)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from v_clients'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227988312892665314)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171037499315348332)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227999884164665322)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171076878036348350)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(32171009842318348309)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(32171134027717348380)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33227988764129665314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33227988312892665314)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33227990339020665316)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33227988312892665314)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33227990790327665316)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33227988312892665314)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33227991151160665316)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33227988312892665314)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111177439462414)
,p_name=>'P3_VARDAS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>'Vardas'
,p_source=>'Vardas'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111258301462415)
,p_name=>'P3_PAVARDE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>unistr('Pavard\0117')
,p_source=>'Pavarde'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111396188462416)
,p_name=>'P3_LYTIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>'Lytis'
,p_source=>'Lytis'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GENDERS'
,p_lov=>'.'||wwv_flow_api.id(14112851934097300760)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111461868462417)
,p_name=>'P3_EL_PASTAS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>unistr('El. Pa\0161tas')
,p_source=>'El_Pastas'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111534402462418)
,p_name=>'P3_TEL_NR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>'Tel. Nr.'
,p_source=>'Tel_Nr'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111692089462419)
,p_name=>'P3_VARTOTOJO_VARDAS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>'Vartotojo Vardas'
,p_source=>'Vartotojo Vardas'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111766053462420)
,p_name=>'P3_SLAPTAZODIS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>unistr('Slapta\017Eodis')
,p_source=>'Slaptazodis'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111831591462421)
,p_name=>'P3_SIUNTIMO_ADRESAS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>'Siuntimo Adresas'
,p_source=>'Siuntimo Adresas'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>254
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119111973428462422)
,p_name=>'P3_SALIS'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>unistr('\0160alis')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r from countries',
'order by name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119112045233462423)
,p_name=>'P3_MIESTAS'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_prompt=>'Miestas'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name d, id r from cities ',
'where country_id = :P3_SALIS',
'order by name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_lov_cascade_parent_items=>'P3_SALIS'
,p_ajax_items_to_submit=>'P3_SALIS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33227981333779665309)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_item_source_plug_id=>wwv_flow_api.id(33227980971822665309)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2864535047437703049)
,p_name=>'Insert'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33227991151160665316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2864535141386703050)
,p_event_id=>wwv_flow_api.id(2864535047437703049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into clients(name, ',
'                    last_name, ',
'                    gender, ',
'                    email, ',
'                    phone, ',
'                    username, ',
'                    password, ',
'                    shippIng_address, ',
'                    country_id, ',
'                    city_id)',
'values (:P3_VARDAS,',
'        :P3_PAVARDE,',
'        :P3_LYTIS,',
'        :P3_EL_PASTAS,',
'        :P3_TEL_NR,',
'        :P3_VARTOTOJO_VARDAS,',
'        :P3_SLAPTAZODIS,',
'        :P3_SIUNTIMO_ADRESAS,',
'        :P3_SALIS,',
'        :P3_MIESTAS);'))
,p_attribute_02=>'P3_VARDAS,P3_PAVARDE,P3_LYTIS,P3_EL_PASTAS,P3_TEL_NR,P3_VARTOTOJO_VARDAS,P3_SLAPTAZODIS,P3_SIUNTIMO_ADRESAS,P3_SALIS,P3_MIESTAS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350323924579123701)
,p_event_id=>wwv_flow_api.id(2864535047437703049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as sukurtas!')
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324174394123703)
,p_event_id=>wwv_flow_api.id(2864535047437703049)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227980971822665309)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324019808123702)
,p_event_id=>wwv_flow_api.id(2864535047437703049)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33350324214850123704)
,p_name=>'Cancle'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33227988764129665314)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324305657123705)
,p_event_id=>wwv_flow_api.id(33350324214850123704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227980971822665309)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324458363123706)
,p_event_id=>wwv_flow_api.id(33350324214850123704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33350324569967123707)
,p_name=>'Delete'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33227990339020665316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324679141123708)
,p_event_id=>wwv_flow_api.id(33350324569967123707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324922436123711)
,p_event_id=>wwv_flow_api.id(33350324569967123707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from v_clients where id = :P3_ID;'
,p_attribute_02=>'P3_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324788079123709)
,p_event_id=>wwv_flow_api.id(33350324569967123707)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227980971822665309)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350324829312123710)
,p_event_id=>wwv_flow_api.id(33350324569967123707)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33350325061495123712)
,p_name=>'Update'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33227990790327665316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350325258897123714)
,p_event_id=>wwv_flow_api.id(33350325061495123712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update clients ',
'set name = :P3_VARDAS,',
'    last_name = :P3_PAVARDE,',
'    gender = :P3_LYTIS,',
'    email = :P3_EL_PASTAS,',
'    phone = :P3_TEL_NR,',
'    username = :P3_VARTOTOJO_VARDAS,',
'    password = :P3_SLAPTAZODIS,',
'    shipping_address = :P3_SIUNTIMO_ADRESAS,',
'    country_id = :P3_SALIS,',
'    city_id = :P3_MIESTAS',
'where id = :P3_ID;'))
,p_attribute_02=>'P3_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350325128443123713)
,p_event_id=>wwv_flow_api.id(33350325061495123712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as atnaujintas!')
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350325329932123715)
,p_event_id=>wwv_flow_api.id(33350325061495123712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227980971822665309)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33350325402026123716)
,p_event_id=>wwv_flow_api.id(33350325061495123712)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14119112138002462424)
,p_name=>'New'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14119112296579462425)
,p_event_id=>wwv_flow_api.id(14119112138002462424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select country_id into :P3_SALIS from clients where id = :P3_ID;',
'exception when others then',
'null;',
'end;'))
,p_attribute_02=>'P3_ID'
,p_attribute_03=>'P3_SALIS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14119112328536462426)
,p_event_id=>wwv_flow_api.id(14119112138002462424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select city_id into :P3_MIESTAS from clients where id = :P3_ID;',
'exception when others then',
'null;',
'end;'))
,p_attribute_02=>'P3_ID'
,p_attribute_03=>'P3_MIESTAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33227991996038665316)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33227980971822665309)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Klientas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33227992361767665317)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33227991579159665316)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(33227980971822665309)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Klientas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
