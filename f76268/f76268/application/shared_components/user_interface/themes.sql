prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 76268
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>41384264076266073471
,p_default_application_id=>76268
,p_default_id_offset=>0
,p_default_owner=>'WKSP_IDEWORK'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(32171135404205348388)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(32171028711421348324)
,p_default_dialog_template=>wwv_flow_api.id(32171024490915348322)
,p_error_template=>wwv_flow_api.id(32171016569319348318)
,p_printer_friendly_template=>wwv_flow_api.id(32171028711421348324)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(32171016569319348318)
,p_default_button_template=>wwv_flow_api.id(32171132605300348380)
,p_default_region_template=>wwv_flow_api.id(32171067494266348346)
,p_default_chart_template=>wwv_flow_api.id(32171067494266348346)
,p_default_form_template=>wwv_flow_api.id(32171067494266348346)
,p_default_reportr_template=>wwv_flow_api.id(32171067494266348346)
,p_default_tabform_template=>wwv_flow_api.id(32171067494266348346)
,p_default_wizard_template=>wwv_flow_api.id(32171067494266348346)
,p_default_menur_template=>wwv_flow_api.id(32171076878036348350)
,p_default_listr_template=>wwv_flow_api.id(32171067494266348346)
,p_default_irr_template=>wwv_flow_api.id(32171065535545348345)
,p_default_report_template=>wwv_flow_api.id(32171097626441348360)
,p_default_label_template=>wwv_flow_api.id(32171130103909348377)
,p_default_menu_template=>wwv_flow_api.id(32171134027717348380)
,p_default_calendar_template=>wwv_flow_api.id(32171134155024348381)
,p_default_list_template=>wwv_flow_api.id(32171114003154348369)
,p_default_nav_list_template=>wwv_flow_api.id(32171125812189348375)
,p_default_top_nav_list_temp=>wwv_flow_api.id(32171125812189348375)
,p_default_side_nav_list_temp=>wwv_flow_api.id(32171120403714348373)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(32171037499315348332)
,p_default_dialogr_template=>wwv_flow_api.id(32171036412868348331)
,p_default_option_label=>wwv_flow_api.id(32171130103909348377)
,p_default_required_label=>wwv_flow_api.id(32171131437458348378)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(32171120094191348372)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
