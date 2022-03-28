prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(32171157112464348400)
,p_name=>unistr('\017Dem\0117lapis')
,p_alias=>unistr('\017DEM\0116LAPIS')
,p_step_title=>unistr('\017Dem\0117lapis')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20211218200408'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23511433847688201773)
,p_plug_name=>unistr('\017Dem\0117lapis')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32171036629051348331)
,p_plug_display_sequence=>10
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_api.create_map_region(
 p_id=>wwv_flow_api.id(23511434209200201773)
,p_region_id=>wwv_flow_api.id(23511433847688201773)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_position_from_browser=>false
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:BROWSER_LOCATION:DISTANCE_TOOL'
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(23511434764006201774)
,p_map_region_id=>wwv_flow_api.id(23511434209200201773)
,p_name=>'Lankytiniai objektai'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_table_name=>'MAP_PLACES'
,p_where_clause=>'type_id > 0'
,p_include_rowid_column=>false
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'Lankytinis objektas <br> <b>&NAME. </b>'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RR,:P21_ID:&ID.'
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(23510286425750114502)
,p_map_region_id=>wwv_flow_api.id(23511434209200201773)
,p_name=>'Regioniniai parkai'
,p_layer_type=>'POINT'
,p_display_sequence=>20
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_table_name=>'MAP_PLACES'
,p_where_clause=>'type_id = 2'
,p_include_rowid_column=>false
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'Regioninis parkas <br> <b>&NAME. </b>'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RR,:P21_ID:&ID.'
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(23510289009501114528)
,p_map_region_id=>wwv_flow_api.id(23511434209200201773)
,p_name=>unistr('E\017Eerai')
,p_layer_type=>'POINT'
,p_display_sequence=>30
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_table_name=>'MAP_PLACES'
,p_where_clause=>'type_id = 4'
,p_include_rowid_column=>false
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>unistr('E\017Eeras <br> <b>&NAME. </b>')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RR,:P21_ID:&ID.'
,p_allow_hide=>true
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(23510289137659114529)
,p_map_region_id=>wwv_flow_api.id(23511434209200201773)
,p_name=>unistr('Mi\0161kai')
,p_layer_type=>'POINT'
,p_display_sequence=>40
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_table_name=>'MAP_PLACES'
,p_where_clause=>'type_id = 3'
,p_include_rowid_column=>false
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>unistr('Mi\0161kas <br> <b>&NAME. </b>')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RR,:P21_ID:&ID.'
,p_allow_hide=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23510289232249114530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23511433847688201773)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32171132605300348380)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Kurti nauj\0105 objekt\0105')
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.component_end;
end;
/
