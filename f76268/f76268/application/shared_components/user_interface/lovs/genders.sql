prompt --application/shared_components/user_interface/lovs/genders
begin
--   Manifest
--     GENDERS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>41384264076266073471
,p_default_application_id=>76268
,p_default_id_offset=>0
,p_default_owner=>'WKSP_IDEWORK'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14112851934097300760)
,p_lov_name=>'GENDERS'
,p_lov_query=>'.'||wwv_flow_api.id(14112851934097300760)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14112852279225300761)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vyras'
,p_lov_return_value=>'Vyras'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14112852686983300761)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Moteris'
,p_lov_return_value=>'Moteris'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14112853035719300761)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Kita'
,p_lov_return_value=>'Kita'
);
wwv_flow_api.component_end;
end;
/
