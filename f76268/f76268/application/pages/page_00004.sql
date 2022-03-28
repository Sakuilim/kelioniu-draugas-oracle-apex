prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>'Auditas'
,p_alias=>'AUDITAS'
,p_step_title=>'Auditas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211126082232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14119112452601462427)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(32171074263311348349)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14119112517302462428)
,p_plug_name=>unistr('\012Era\0161ymo Opracijos')
,p_parent_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171065535545348345)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'select object, object_name, user_id, created_at from audit_trail where operation = ''Insert'';'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\012Era\0161ymo Opracijos')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14119112622052462429)
,p_max_row_count=>'1000000'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>14119112622052462429
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113122960462434)
,p_db_column_name=>'OBJECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Objektas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113254974462435)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Objekto Pavadinimas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113393520462436)
,p_db_column_name=>'USER_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Naudotojo ID'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113402799462437)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\012Era\0161o Suk\016Brimo Data')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15284360403037008458)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'152843605'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OBJECT:OBJECT_NAME:USER_ID:CREATED_AT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14119112721477462430)
,p_plug_name=>'Atnaujinimo Operacijos'
,p_parent_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171065535545348345)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'select object, object_name, user_id, created_at from audit_trail where operation = ''Update'';'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Atnaujinimo Operacijos'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14119112817644462431)
,p_max_row_count=>'1000000'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>14119112817644462431
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113522291462438)
,p_db_column_name=>'OBJECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Objektas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113634834462439)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Objekto Pavadinimas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113788996462440)
,p_db_column_name=>'USER_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Naudotojo ID'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113883603462441)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\012Era\0161o Suk\016Brimo Data')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15284361055853008479)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'152843611'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OBJECT:OBJECT_NAME:USER_ID:CREATED_AT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14119112931935462432)
,p_plug_name=>unistr('I\0161trinimo Operacijos')
,p_parent_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171065535545348345)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'select object, object_name, user_id, created_at from audit_trail where operation = ''Delete'';'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('I\0161trinimo Operacijos')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14119113044543462433)
,p_max_row_count=>'1000000'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>14119113044543462433
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119113914210462442)
,p_db_column_name=>'OBJECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Objektas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119114090262462443)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Objekto Pavadinimas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119114129869462444)
,p_db_column_name=>'USER_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Naudotojo ID'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14119114213913462445)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\012Era\0161o Suk\016Brimo Data')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15284361690945008485)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'152843617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OBJECT:OBJECT_NAME:USER_ID:CREATED_AT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15284049827446954271)
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
 p_id=>wwv_flow_api.id(15685049267460448003)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_button_name=>'BAR_CHART'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(32171131938534348379)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Statistika'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-bar-chart'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15685049192163448002)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_button_name=>'PIE_CHART'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(32171131938534348379)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Statistika'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-pie-chart'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14119114615988462449)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_button_name=>unistr('SKAI\010CIUOTI')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Skai\010Diuoti')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14119114513420462448)
,p_name=>'P4_NEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14119112452601462427)
,p_prompt=>unistr('\012Era\0161\0173 kiekis')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(32171130103909348377)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14119114799298462450)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14119114615988462449)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685049013352448001)
,p_event_id=>wwv_flow_api.id(14119114799298462450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_NEW'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT COUNT(*) FROM audit_trail'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
