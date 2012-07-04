<?php
/****************************************************************************************
* LiveZilla definitions.inc.php
* 
* Copyright 2011 LiveZilla GmbH
* All rights reserved.
* LiveZilla is a registered trademark.
* 
***************************************************************************************/ 

define("VERSION","3.3.2.2");
define("DEBUG_MODE",false);
define("PHP_NEEDED_MAJOR",5);
define("PHP_NEEDED_MINOR",0);
define("PHP_NEEDED_BUILD",0);
define("MYSQL_NEEDED_MAJOR",5);
define("PROTOCOL","livezilla");
define("USER_ID_LENGTH",10);
define("DATA_ITEM_LOADS",25);
define("DATA_LIFETIME",2592000);
define("MAX_POST_SIZE_SAFE_MODE",512000);
define("MAX_UPLOAD_SIZE_SAFE_MODE",200000);
define("MAX_MAIL_PER_DAY",3);
define("MAX_RATES_PER_DAY",3);
define("MAX_LOGIN_ATTEMPTS",5);
define("ALLOCATION_MODE_ALL",1);
define("CALLER_TYPE_INTERNAL","intern");
define("CALLER_TYPE_EXTERNAL","extern");
define("CALLER_TYPE_TRACK","track");
define("CONNECTION_ERROR_SPAN",45);
define("PERMISSION_FULL",2);
define("PERMISSION_RELATED",1);
define("PERMISSION_NONE",0);
define("PERMISSION_VOID",-1);
define("PERMISSION_MESSAGES",0);
define("PERMISSION_RATINGS",1);
define("PERMISSION_CHATS",2);
define("PERMISSION_REPORTS",5);
define("PERMISSION_MONITORING",6);
define("CHAT_CLOSED",1);
define("CHAT_DECLINED",0);
define("CHAT_STATUS_OPEN",0);
define("CHAT_STATUS_WAITING",1);
define("CHAT_STATUS_ACTIVE",2);
define("USER_STATUS_ONLINE",0);
define("USER_STATUS_BUSY",1);
define("USER_STATUS_OFFLINE",2);
define("USER_STATUS_AWAY",3);
define("USER_TYPE_INTERN",1);
define("USER_LEVEL_ADMIN",1);
define("GROUP_STATUS_AVAILABLE",0);
define("GROUP_STATUS_BUSY",1);
define("GROUP_STATUS_UNAVAILABLE",2);
define("POST_ACTION_VALUE_SPLITTER","><");
define("POST_ACTION_ADD",0);
define("POST_ACTION_EDIT",1);
define("POST_ACTION_REMOVE",2);
define("DATA_RESPONSE_TYPE_STATIC",2);
define("DATA_RESPONSE_TYPE_BASIC",1);
define("DATA_RESPONSE_TYPE_KEEP_ALIVE",0);
define("GROUP_EVERYONE_INTERN","everyoneintern");
define("GROUP_EVERYONE_EXTERN","everyoneextern");
define("BROWSER_TYPE_BROWSER",0);
define("BROWSER_TYPE_CHAT",1);
define("RESOURCE_TYPE_FILE_INTERNAL",3);
define("RESOURCE_TYPE_FILE_EXTERNAL",4);
define("LOGIN_REPLY_BAD_COMBINATION",0);
define("LOGIN_REPLY_SUCCEEDED",1);
define("LOGIN_REPLY_ALREADY_ONLINE",2);
define("LOGIN_REPLY_CHANGE_PASS",5);
define("LOGIN_REPLY_NOADMIN",9);
define("LOGIN_REPLY_DEACTIVATED",10);
define("LOGIN_REPLY_IDLE",11);
define("LOGIN_REPLY_DB",13);
define("FILTER_EXERTION_BLACK",0);
define("FILTER_EXERTION_WHITE",1);
define("FILTER_TYPE_ACTIVE",1);
define("FILTER_TYPE_INACTIVE",0);
define("FLOOD_PROTECTION_SESSIONS",15);
define("FLOOD_PROTECTION_TIME",60);
define("CONFIG_LIVEZILLA_GEO","http://ssl.livezilla.net/geo/resolute/");
define("CONFIG_LIVEZILLA_GEO_PREMIUM","https://ssl.livezilla.net/geo/resolute/");
define("CONFIG_LIVEZILLA_FAQ","http://www.livezilla.net/faq/");
define("EXTERN_ACTION_RELOAD_GROUPS","reloadgroups");
define("EXTERN_ACTION_LISTEN","listen");
define("EXTERN_ACTION_MAIL","mail");
define("EXTERN_ACTION_RATE","rate");
define("INTERN_ACTION_LISTEN","listen");
define("INTERN_ACTION_REPORTS","reports");
define("INTERN_ACTION_LOGIN","login");
define("INTERN_ACTION_SET_MANAGEMENT","update_management");
define("INTERN_ACTION_SET_CONFIG","set_config");
define("INTERN_ACTION_DATABASE_TEST","database_test");
define("INTERN_ACTION_CREATE_TABLES","create_tables");
define("INTERN_ACTION_INIT_UPLOAD","init_upload");
define("INTERN_ACTION_SEND_FILE","send_file");
define("INTERN_ACTION_SEND_TEST_MAIL","send_test_mail");
define("INTERN_ACTION_REMOVE_FILE","remove_file");
define("INTERN_ACTION_SET_AVAILABILITY","set_availability");
define("INTERN_ACTION_SET_IDLE","set_idle");
define("INTERN_ACTION_GET_BANNER_LIST","get_banner_list");
define("INTERN_ACTION_SEND_RESOURCES","send_resources");
define("INTERN_ACTION_DOWNLOAD_TRANSLATION","download_translation");
define("XML_CLIP_NULL","N");
@define("AGENT_TYPE_CRAWLER","0");
@define("AGENT_TYPE_BROWSER","1");
@define("AGENT_TYPE_APPLICATION","2");
@define("AGENT_TYPE_UNKNOWN","3");

define("ST_ACTION_FORWARDED_CHAT", 2);
define("ST_ACTION_INTERNAL_POST", 3);
define("ST_ACTION_EXTERNAL_POST", 4);
define("ST_ACTION_LOG_STATUS", 5);
define("ST_ACTION_LOG_CRAWLER_ACCESS", 6);
define("ST_ACTION_GOAL", 7);
define("STATISTIC_PERIOD_TYPE_DAY", "day");
define("STATISTIC_PERIOD_TYPE_MONTH", "month");
define("STATISTIC_PERIOD_TYPE_YEAR", "year");

define("PATH_CONFIG",LIVEZILLA_PATH . "_config/");
define("PATH_GROUPS",LIVEZILLA_PATH . "_groups/");
define("PATH_UPLOADS_INTERNAL",LIVEZILLA_PATH . "uploads/internal/");
define("PATH_UPLOADS_EXTERNAL",LIVEZILLA_PATH . "uploads/external/");
define("PATH_UPLOADS",LIVEZILLA_PATH . "uploads/");
define("PATH_BANNER",LIVEZILLA_PATH . "banner/");
define("PATH_IMAGES",LIVEZILLA_PATH . "images/");
define("PATH_LOG",LIVEZILLA_PATH . "_log/");
define("PATH_TEMPLATES",LIVEZILLA_PATH . "templates/");
define("FILE_EXTENSION_FILTER",".lzf");
define("FILE_EXTENSION_PASSWORD",".pwd.php");
define("FILE_EXTENSION_PASSWORD_TXT",".pwd");
define("FILE_EXTENSION_CHANGE_PASSWORD",".cpw");
define("FILE_EXTENSION_LAST_CHAT_ALLOCATION",".lca");
define("FILE_ACTION_SUCCEEDED",1);
define("FILE_ACTION_ERROR",2);
define("FILE_ACTION_NONE",0);
define("FILE_ERROR_LOG",PATH_LOG . "livezilla.log");
define("FILE_SERVER_DISABLED",PATH_CONFIG . "_SERVER_DISABLED_");
define("FILE_SERVER_IDLE",PATH_CONFIG . "_SERVER_IDLE_");
define("FILE_SERVER_FILE","server.php");
define("FILE_TYPE_USERFILE","user_file");
define("FILE_TYPE_CARRIERLOGO","carrier_logo");
define("FILE_TYPE_CARRIERHEADER","carrier_header");
define("FILE_TYPE_ADMIN_BANNER","administrator_banner");
define("FILE_INDEX","index.html");
define("FILE_INDEX_OLD","index.htm");
define("FILE_CHAT","chat.php");
define("FILE_CONFIG",LIVEZILLA_PATH . "_config/config.inc.php");
define("SCHEME_HTTP","http://");
define("SCHEME_HTTP_SECURE","https://");
define("EX_FILE_UPLOAD_REQUEST","lzar");

define("DATABASE_INFO","info");
define("DATABASE_CHAT_ARCHIVE","chat_archive");
define("DATABASE_RESOURCES","resources");
define("DATABASE_PREDEFINED","predefined");
define("DATABASE_CHAT_FILES","chat_files");
define("DATABASE_CHAT_FORWARDS","chat_forwards");
define("DATABASE_POSTS","chat_posts");
define("DATABASE_RATINGS","ratings");
define("DATABASE_PROFILES","profiles");
define("DATABASE_PROFILE_PICTURES","profile_pictures");
define("DATABASE_TICKETS","tickets");
define("DATABASE_TICKET_MESSAGES","ticket_messages");
define("DATABASE_TICKET_EDITORS","ticket_editors");
define("DATABASE_TICKET_CUSTOMS","ticket_customs");
define("DATABASE_EVENTS","events");
define("DATABASE_EVENT_ACTIONS","event_actions");
define("DATABASE_EVENT_ACTION_RECEIVERS","event_action_receivers");
define("DATABASE_EVENT_ACTION_INVITATIONS","event_action_overlays");
define("DATABASE_EVENT_ACTION_SENDERS","event_action_senders");
define("DATABASE_EVENT_ACTION_WEBSITE_PUSHS","event_action_website_pushs");
define("DATABASE_EVENT_ACTION_INTERNALS","event_action_internals");
define("DATABASE_EVENT_TRIGGERS","event_triggers");
define("DATABASE_EVENT_URLS","event_urls");
define("DATABASE_EVENT_FUNNELS","event_funnels");
define("DATABASE_CHAT_REQUESTS","chat_requests");
define("DATABASE_ALERTS","alerts");
define("DATABASE_WEBSITE_PUSHS","website_pushs");
define("DATABASE_VISITOR_DATA_BROWSERS","visitor_data_browsers");
define("DATABASE_VISITOR_DATA_SYSTEMS","visitor_data_systems");
define("DATABASE_VISITOR_DATA_RESOLUTIONS","visitor_data_resolutions");
define("DATABASE_VISITOR_DATA_CITIES","visitor_data_cities");
define("DATABASE_VISITOR_DATA_REGIONS","visitor_data_regions");
define("DATABASE_VISITOR_DATA_ISPS","visitor_data_isps");
define("DATABASE_VISITOR_DATA_PAGES","visitor_data_pages");
define("DATABASE_VISITOR_DATA_DOMAINS","visitor_data_domains");
define("DATABASE_VISITOR_DATA_PATHS","visitor_data_paths");
define("DATABASE_VISITOR_DATA_CRAWLERS","visitor_data_crawlers");
define("DATABASE_VISITOR_DATA_QUERIES","visitor_data_queries");
define("DATABASE_VISITOR_DATA_TITLES","visitor_data_titles");
define("DATABASE_VISITOR_DATA_AREA_CODES","visitor_data_area_codes");
define("DATABASE_FILTERS","filters");
define("DATABASE_VISITORS","visitors");
define("DATABASE_VISITOR_CHATS","visitor_chats");
define("DATABASE_VISITOR_CHAT_OPERATORS","visitor_chat_operators");
define("DATABASE_VISITOR_BROWSERS","visitor_browsers");
define("DATABASE_VISITOR_BROWSER_URLS","visitor_browser_urls");
define("DATABASE_OPERATOR_STATUS","operator_status");
define("DATABASE_OPERATORS","operators");
define("DATABASE_OPERATOR_LOGINS","operator_logins");
define("DATABASE_STATS_AGGS","stats_aggs");
define("DATABASE_STATS_AGGS_BROWSERS","stats_aggs_browsers");
define("DATABASE_STATS_AGGS_RESOLUTIONS","stats_aggs_resolutions");
define("DATABASE_STATS_AGGS_COUNTRIES","stats_aggs_countries");
define("DATABASE_STATS_AGGS_VISITS","stats_aggs_visits");
define("DATABASE_STATS_AGGS_SYSTEMS","stats_aggs_systems");
define("DATABASE_STATS_AGGS_LANGUAGES","stats_aggs_languages");
define("DATABASE_STATS_AGGS_CITIES","stats_aggs_cities");
define("DATABASE_STATS_AGGS_REGIONS","stats_aggs_regions");
define("DATABASE_STATS_AGGS_ISPS","stats_aggs_isps");
define("DATABASE_STATS_AGGS_QUERIES","stats_aggs_queries");
define("DATABASE_STATS_AGGS_PAGES","stats_aggs_pages");
define("DATABASE_STATS_AGGS_DOMAINS","stats_aggs_domains");
define("DATABASE_STATS_AGGS_REFERRERS","stats_aggs_referrers");
define("DATABASE_STATS_AGGS_AVAILABILITIES","stats_aggs_availabilities");
define("DATABASE_STATS_AGGS_DURATIONS","stats_aggs_durations");
define("DATABASE_STATS_AGGS_CHATS","stats_aggs_chats");
define("DATABASE_STATS_AGGS_SEARCH_ENGINES","stats_aggs_search_engines");
define("DATABASE_STATS_AGGS_VISITORS","stats_aggs_visitors");
define("DATABASE_STATS_AGGS_CRAWLERS","stats_aggs_crawlers");
define("DATABASE_STATS_AGGS_PAGES_ENTRANCE","stats_aggs_pages_entrance");
define("DATABASE_STATS_AGGS_PAGES_EXIT","stats_aggs_pages_exit");
define("DATABASE_STATS_AGGS_GOALS","stats_aggs_goals");
define("DATABASE_EVENT_GOALS","event_goals");
define("DATABASE_GOALS","goals");
define("DATABASE_VISITOR_GOALS","visitor_goals");
?>