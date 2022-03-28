prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>unistr('U\017Esakymai Kalendorius')
,p_alias=>unistr('U\017DSAKYMAI-KALENDORIUS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('U\017Esakymai Kalendorius')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211028185844'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7053849410913470550)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14036819968403496944)
,p_plug_name=>'Orders'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171036412868348331)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CLIENT_ID,',
'       ORDER_STATUS_ID,',
'       DISCOUNT_ID,',
'       ORDER_SUBMISSION_DATE,',
'       ORDER_INFO,',
'       ORDER_RETURN_NUMBER',
'  from ORDERS',
' '))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P28_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14036825804047496948)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171037499315348332)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7053847778808470548)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14036825804047496948)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7053848151090470548)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14036825804047496948)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
,p_confirm_style=>'danger'
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7053848544673470549)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14036825804047496948)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7053848912992470549)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14036825804047496948)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053841478757470543)
,p_name=>'P28_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053841858553470543)
,p_name=>'P28_CLIENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_prompt=>'Klientas'
,p_source=>'CLIENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select username || ''('' || email || '')'' d, id r from clients order by username asc'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32171131437458348378)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053842279535470543)
,p_name=>'P28_ORDER_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_prompt=>unistr('U\017Esakymo Statusas')
,p_source=>'ORDER_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select status d, id r from order_statuses'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32171131437458348378)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053842600540470544)
,p_name=>'P28_DISCOUNT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_prompt=>unistr('Nuolaidos Vert\0117 (%)')
,p_source=>'DISCOUNT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select value * 100 || ''% ('' || info || '')'' d, id r from discounts '
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32171131437458348378)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053843032476470544)
,p_name=>'P28_ORDER_SUBMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_prompt=>unistr('U\017Esakymo Pateikimo Data')
,p_source=>'ORDER_SUBMISSION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(32171131437458348378)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053843492780470544)
,p_name=>'P28_ORDER_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_prompt=>unistr('U\017Esakymo Informacija')
,p_source=>'ORDER_INFO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>254
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7053843898676470545)
,p_name=>'P28_ORDER_RETURN_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_item_source_plug_id=>wwv_flow_api.id(14036819968403496944)
,p_prompt=>unistr('U\017Esakymo Gr\0105\017Einimo Numeris')
,p_source=>'ORDER_RETURN_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7053857100846470556)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7053847778808470548)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053857602170470556)
,p_event_id=>wwv_flow_api.id(7053857100846470556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7053850408257470551)
,p_name=>'Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7053848151090470548)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053850918867470553)
,p_event_id=>wwv_flow_api.id(7053850408257470551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from orders where id = :P28_ID;'
,p_attribute_02=>'P28_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053851952253470554)
,p_event_id=>wwv_flow_api.id(7053850408257470551)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14036819968403496944)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053851479512470553)
,p_event_id=>wwv_flow_api.id(7053850408257470551)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:27:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7053852334436470554)
,p_name=>'Update'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7053848544673470549)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053852879900470554)
,p_event_id=>wwv_flow_api.id(7053852334436470554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update orders ',
'set client_id = :P28_CLIENT_ID,',
'order_status_id = :P28_ORDER_STATUS_ID,',
'discount_id = :P28_DISCOUNT_ID,',
'order_submission_date = :P28_ORDER_SUBMISSION_DATE,',
'order_info = :P28_ORDER_INFO,',
'order_return_number = :P28_ORDER_RETURN_NUMBER',
'where id = :P28_ID;',
''))
,p_attribute_02=>'P28_ID,P28_CLIENT_ID,P28_ORDER_STATUS_ID,P28_DISCOUNT_ID,P28_ORDER_SUBMISSION_DATE,P28_ORDER_INFO,P28_ORDER_RETURN_NUMBER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053853368542470554)
,p_event_id=>wwv_flow_api.id(7053852334436470554)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as atnaujintas!')
,p_attribute_03=>'information'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053853818157470555)
,p_event_id=>wwv_flow_api.id(7053852334436470554)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14036819968403496944)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053854388185470555)
,p_event_id=>wwv_flow_api.id(7053852334436470554)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:27:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7053854740772470555)
,p_name=>'Insert'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7053848912992470549)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053855201971470555)
,p_event_id=>wwv_flow_api.id(7053854740772470555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into orders(client_id, order_status_id, discount_id , order_submission_date, order_info, order_return_number) ',
'values (:P28_CLIENT_ID, :P28_ORDER_STATUS_ID, :P28_DISCOUNT_ID, :P28_ORDER_SUBMISSION_DATE,:P28_ORDER_INFO,:P28_ORDER_RETURN_NUMBER);'))
,p_attribute_02=>'P28_ID,P28_ORDER_STATUS_ID,P28_DISCOUNT_ID,P28_ORDER_SUBMISSION_DATE,P28_ORDER_INFO,P28_ORDER_RETURN_NUMBER,P28_CLIENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053855746023470555)
,p_event_id=>wwv_flow_api.id(7053854740772470555)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as sukurtas!')
,p_attribute_03=>'information'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053856255823470556)
,p_event_id=>wwv_flow_api.id(7053854740772470555)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14036819968403496944)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7053856761944470556)
,p_event_id=>wwv_flow_api.id(7053854740772470555)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:27:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7053847039953470547)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(14036819968403496944)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Orders'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7053850003630470551)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'REQUEST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7053846670719470547)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(14036819968403496944)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Orders'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
