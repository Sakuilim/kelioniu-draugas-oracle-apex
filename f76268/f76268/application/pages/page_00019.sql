prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>'Nuolaidos Kodai'
,p_alias=>'NUOLAIDOS-KODAI'
,p_page_mode=>'MODAL'
,p_step_title=>'Nuolaidos Kodai'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211028174140'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5615636101072937231)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171065535545348345)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select id, to_char(value*100, ''99.99'') value, code, info from discounts'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5615636514863937231)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>unistr('Nerasta duomen\0173')
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>5615636514863937231
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5615636643150937231)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5604843849674662303)
,p_db_column_name=>'CODE'
,p_display_order=>12
,p_column_identifier=>'D'
,p_column_label=>'Kodas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5604844023910662305)
,p_db_column_name=>'VALUE'
,p_display_order=>32
,p_column_identifier=>'E'
,p_column_label=>unistr('Nuolaidos vet\0117 (%)')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5615637416377937232)
,p_db_column_name=>'INFO'
,p_display_order=>42
,p_column_identifier=>'C'
,p_column_label=>'Informacija'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5617812431478981760)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'56178125'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CODE:VALUE:INFO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5615638885206937233)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5615636101072937231)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(32171132761554348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5615637811531937232)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5615636101072937231)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5615638356597937233)
,p_event_id=>wwv_flow_api.id(5615637811531937232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5615636101072937231)
);
wwv_flow_api.component_end;
end;
/
