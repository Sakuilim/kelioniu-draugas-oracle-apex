prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>'Klientai'
,p_alias=>'KLIENTAI'
,p_step_title=>'Klientai'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211028172630'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227992996240665317)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171065535545348345)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_CLIENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33227993375803665317)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_internal_uid=>33227993375803665317
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33227993450503665317)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350326981448123731)
,p_db_column_name=>'Vardas'
,p_display_order=>11
,p_column_identifier=>'U'
,p_column_label=>'Vardas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327065380123732)
,p_db_column_name=>'Pavarde'
,p_display_order=>21
,p_column_identifier=>'V'
,p_column_label=>unistr('Pavard\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327122152123733)
,p_db_column_name=>'Lytis'
,p_display_order=>51
,p_column_identifier=>'W'
,p_column_label=>'Lytis'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327221331123734)
,p_db_column_name=>'El_Pastas'
,p_display_order=>61
,p_column_identifier=>'X'
,p_column_label=>unistr('El. Pa\0161tas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327355092123735)
,p_db_column_name=>'Tel_Nr'
,p_display_order=>71
,p_column_identifier=>'Y'
,p_column_label=>'Tel. Nr.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2864534431256703043)
,p_db_column_name=>'Vartotojo Vardas'
,p_display_order=>91
,p_column_identifier=>'P'
,p_column_label=>'Vartotojo Vardas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327449570123736)
,p_db_column_name=>'Slaptazodis'
,p_display_order=>101
,p_column_identifier=>'Z'
,p_column_label=>unistr('Slapta\017Eodis')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2864534621280703045)
,p_db_column_name=>'Siuntimo Adresas'
,p_display_order=>111
,p_column_identifier=>'R'
,p_column_label=>'Siuntimo Adresas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327501820123737)
,p_db_column_name=>'Salis'
,p_display_order=>121
,p_column_identifier=>'AA'
,p_column_label=>unistr('\0160alis')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33350327630012123738)
,p_db_column_name=>'Miestas'
,p_display_order=>131
,p_column_identifier=>'AB'
,p_column_label=>'Miestas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33227853064322309751)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'332278531'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Vardas:Pavarde:Lytis:El_Pastas:Tel_Nr:Vartotojo Vardas:Slaptazodis:Siuntimo Adresas:Salis:Miestas:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33227999292888665321)
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
 p_id=>wwv_flow_api.id(33228000451687665323)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33227992996240665317)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33227998161644665321)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(33227992996240665317)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33227998626601665321)
,p_event_id=>wwv_flow_api.id(33227998161644665321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33227992996240665317)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5604843687369662301)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'New'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'oskaras.starinskas@gmail.com'
,p_attribute_06=>'Apex'
,p_attribute_07=>'Hello, msg from apex, client successfully created'
,p_attribute_10=>'N'
,p_process_error_message=>'Email error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Email sent'
);
wwv_flow_api.component_end;
end;
/
