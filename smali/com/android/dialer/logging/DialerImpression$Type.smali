.class public final enum Lcom/android/dialer/logging/DialerImpression$Type;
.super Ljava/lang/Enum;
.source "DialerImpression.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/DialerImpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/DialerImpression$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final enum ADD_TO_A_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final ADD_TO_A_CONTACT_FROM_CALL_HISTORY_VALUE:I = 0x4ca

.field public static final enum ADD_TO_A_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final ADD_TO_A_CONTACT_FROM_CALL_LOG_VALUE:I = 0x4c7

.field public static final enum ADD_TO_A_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final ADD_TO_A_CONTACT_FROM_DIALPAD_VALUE:I = 0x4c8

.field public static final enum ADD_TO_A_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final ADD_TO_A_CONTACT_FROM_VOICEMAIL_VALUE:I = 0x4c9

.field public static final enum APP_LAUNCHED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final APP_LAUNCHED_VALUE:I = 0x3e9

.field public static final enum BACKUP_FULL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_FULL_BACKED_UP_VALUE:I = 0x43d

.field public static final enum BACKUP_KEY_VALUE_BACKUP_AGENT_CONSTRUCTOR:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BACKUP_KEY_VALUE_BACKUP_AGENT_CONSTRUCTOR_VALUE:I = 0x4db

.field public static final enum BACKUP_KEY_VALUE_GET_BACKUP_SPECIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BACKUP_KEY_VALUE_GET_BACKUP_SPECIFICATION_VALUE:I = 0x4da

.field public static final enum BACKUP_KEY_VALUE_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BACKUP_KEY_VALUE_ON_BACKUP_VALUE:I = 0x4d7

.field public static final enum BACKUP_KEY_VALUE_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final enum BACKUP_KEY_VALUE_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BACKUP_KEY_VALUE_ON_RESTORE_FINISHED_VALUE:I = 0x4d9

.field public static final BACKUP_KEY_VALUE_ON_RESTORE_VALUE:I = 0x4d8

.field public static final enum BACKUP_MAX_VM_BACKUP_REACHED:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_MAX_VM_BACKUP_REACHED_VALUE:I = 0x447

.field public static final enum BACKUP_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BACKUP_ON_BACKUP_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_BACKUP_DISABLED_VALUE:I = 0x43b

.field public static final enum BACKUP_ON_BACKUP_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_BACKUP_JSON_EXCEPTION_VALUE:I = 0x43e

.field public static final BACKUP_ON_BACKUP_VALUE:I = 0x439

.field public static final enum BACKUP_ON_FULL_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_FULL_BACKUP_VALUE:I = 0x43a

.field public static final enum BACKUP_ON_QUOTA_EXCEEDED:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_QUOTA_EXCEEDED_VALUE:I = 0x43f

.field public static final enum BACKUP_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BACKUP_ON_RESTORE_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_RESTORE_DISABLED_VALUE:I = 0x444

.field public static final enum BACKUP_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_RESTORE_FINISHED_VALUE:I = 0x443

.field public static final enum BACKUP_ON_RESTORE_IO_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_RESTORE_IO_EXCEPTION_VALUE:I = 0x446

.field public static final enum BACKUP_ON_RESTORE_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_RESTORE_JSON_EXCEPTION_VALUE:I = 0x445

.field public static final BACKUP_ON_RESTORE_VALUE:I = 0x440

.field public static final enum BACKUP_ON_RESTORE_VM_DUPLICATE_NOT_RESTORING:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_ON_RESTORE_VM_DUPLICATE_NOT_RESTORING_VALUE:I = 0x450

.field public static final enum BACKUP_RESTORED_FILE:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_RESTORED_FILE_VALUE:I = 0x441

.field public static final enum BACKUP_RESTORED_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_RESTORED_VOICEMAIL_VALUE:I = 0x442

.field public static final enum BACKUP_VOICEMAIL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_VOICEMAIL_BACKED_UP_VALUE:I = 0x43c

.field public static final enum BUBBLE_END_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BUBBLE_END_CALL_VALUE:I = 0x4ab

.field public static final enum BUBBLE_MUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BUBBLE_MUTE_CALL_VALUE:I = 0x4a9

.field public static final enum BUBBLE_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BUBBLE_TURN_ON_SPEAKERPHONE_VALUE:I = 0x4a7

.field public static final enum BUBBLE_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BUBBLE_TURN_ON_WIRED_OR_EARPIECE_VALUE:I = 0x4a8

.field public static final enum BUBBLE_UNMUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final BUBBLE_UNMUTE_CALL_VALUE:I = 0x4aa

.field public static final enum CALLER_ID_REPORTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALLER_ID_REPORTED_VALUE:I = 0x4cb

.field public static final enum CALLER_ID_REPORT_FAILED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALLER_ID_REPORT_FAILED_VALUE:I = 0x4cc

.field public static final enum CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL_VALUE:I = 0x452

.field public static final enum CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY_VALUE:I = 0x453

.field public static final enum CALL_DETAILS_CALL_BACK:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_DETAILS_CALL_BACK_VALUE:I = 0x463

.field public static final enum CALL_DETAILS_COPY_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_DETAILS_COPY_NUMBER_VALUE:I = 0x461

.field public static final enum CALL_DETAILS_EDIT_BEFORE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_DETAILS_EDIT_BEFORE_CALL_VALUE:I = 0x462

.field public static final enum CALL_LOG_ADD_TO_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_ADD_TO_CONTACT_VALUE:I = 0x41a

.field public static final enum CALL_LOG_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_BLOCK_NUMBER_VALUE:I = 0x3ed

.field public static final enum CALL_LOG_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_BLOCK_REPORT_SPAM_VALUE:I = 0x3ec

.field public static final enum CALL_LOG_CONTEXT_MENU_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_CONTEXT_MENU_BLOCK_NUMBER_VALUE:I = 0x423

.field public static final enum CALL_LOG_CONTEXT_MENU_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_CONTEXT_MENU_BLOCK_REPORT_SPAM_VALUE:I = 0x422

.field public static final enum CALL_LOG_CONTEXT_MENU_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_CONTEXT_MENU_REPORT_AS_NOT_SPAM_VALUE:I = 0x425

.field public static final enum CALL_LOG_CONTEXT_MENU_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_CONTEXT_MENU_UNBLOCK_NUMBER_VALUE:I = 0x424

.field public static final enum CALL_LOG_CREATE_NEW_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_CREATE_NEW_CONTACT_VALUE:I = 0x41b

.field public static final enum CALL_LOG_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_REPORT_AS_NOT_SPAM_VALUE:I = 0x3ef

.field public static final enum CALL_LOG_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_SEND_MESSAGE_VALUE:I = 0x419

.field public static final enum CALL_LOG_SHARE_AND_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_SHARE_AND_CALL_VALUE:I = 0x451

.field public static final enum CALL_LOG_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CALL_LOG_UNBLOCK_NUMBER_VALUE:I = 0x3ee

.field public static final enum CAMERA_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CAMERA_PERMISSION_DENIED_VALUE:I = 0x436

.field public static final enum CAMERA_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CAMERA_PERMISSION_DISPLAYED_VALUE:I = 0x432

.field public static final enum CAMERA_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CAMERA_PERMISSION_GRANTED_VALUE:I = 0x435

.field public static final enum CAMERA_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CAMERA_PERMISSION_REQUESTED_VALUE:I = 0x433

.field public static final enum CAMERA_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CAMERA_PERMISSION_SETTINGS_VALUE:I = 0x434

.field public static final enum CREATE_NEW_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CREATE_NEW_CONTACT_FROM_CALL_HISTORY_VALUE:I = 0x4c6

.field public static final enum CREATE_NEW_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CREATE_NEW_CONTACT_FROM_CALL_LOG_VALUE:I = 0x4c3

.field public static final enum CREATE_NEW_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CREATE_NEW_CONTACT_FROM_DIALPAD_VALUE:I = 0x4c4

.field public static final enum CREATE_NEW_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final CREATE_NEW_CONTACT_FROM_VOICEMAIL_VALUE:I = 0x4c5

.field public static final enum DIALOG_ACTION_CONFIRM_NUMBER_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final DIALOG_ACTION_CONFIRM_NUMBER_NOT_SPAM_VALUE:I = 0x3f0

.field public static final enum DIALOG_ACTION_CONFIRM_NUMBER_SPAM_INDIRECTLY_VIA_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final DIALOG_ACTION_CONFIRM_NUMBER_SPAM_INDIRECTLY_VIA_BLOCK_NUMBER_VALUE:I = 0x3f2

.field public static final enum EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION_VALUE:I = 0x48e

.field public static final enum EMERGENCY_CALLBACK:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_CALLBACK_VALUE:I = 0x48c

.field public static final enum EMERGENCY_CANT_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_CANT_GET_LOCATION_VALUE:I = 0x48f

.field public static final enum EMERGENCY_GOT_ADDRESS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_GOT_ADDRESS_VALUE:I = 0x493

.field public static final enum EMERGENCY_GOT_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_GOT_LOCATION_VALUE:I = 0x492

.field public static final enum EMERGENCY_GOT_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_GOT_MAP_VALUE:I = 0x494

.field public static final enum EMERGENCY_INACCURATE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_INACCURATE_LOCATION_VALUE:I = 0x491

.field public static final enum EMERGENCY_LAUNCHED_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_LAUNCHED_MAP_VALUE:I = 0x495

.field public static final enum EMERGENCY_NEW_EMERGENCY_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_NEW_EMERGENCY_CALL_VALUE:I = 0x48b

.field public static final enum EMERGENCY_NO_LOCATION_PERMISSION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_NO_LOCATION_PERMISSION_VALUE:I = 0x48d

.field public static final enum EMERGENCY_STALE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EMERGENCY_STALE_LOCATION_VALUE:I = 0x490

.field public static final enum EVENT_ANSWER_HINT_ACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EVENT_ANSWER_HINT_ACTIVATED_VALUE:I = 0x448

.field public static final enum EVENT_ANSWER_HINT_DEACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final EVENT_ANSWER_HINT_DEACTIVATED_VALUE:I = 0x449

.field public static final enum IMS_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IMS_VIDEO_REQUESTED_FROM_CALL_LOG_VALUE:I = 0x4af

.field public static final enum IMS_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IMS_VIDEO_REQUESTED_FROM_SEARCH_VALUE:I = 0x4ae

.field public static final enum IMS_VIDEO_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final enum IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO_VALUE:I = 0x4a1

.field public static final IMS_VIDEO_REQUEST_ACCEPTED_VALUE:I = 0x4a0

.field public static final enum IMS_VIDEO_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IMS_VIDEO_REQUEST_DECLINED_VALUE:I = 0x4a2

.field public static final enum IMS_VIDEO_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IMS_VIDEO_REQUEST_RECEIVED_VALUE:I = 0x4a3

.field public static final enum IMS_VIDEO_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IMS_VIDEO_UPGRADE_REQUESTED_VALUE:I = 0x49f

.field public static final enum INCOMING_NON_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final INCOMING_NON_SPAM_CALL_VALUE:I = 0x406

.field public static final enum INCOMING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final INCOMING_RTT_CALL_VALUE:I = 0x567

.field public static final enum INCOMING_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final INCOMING_SPAM_CALL_VALUE:I = 0x405

.field public static final enum INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final INCOMING_VIDEO_CALL_VALUE:I = 0x44e

.field public static final enum IN_CALL_SCREEN_SWAP_CAMERA:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_SWAP_CAMERA_VALUE:I = 0x45a

.field public static final enum IN_CALL_SCREEN_TURN_OFF_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_TURN_OFF_MUTE_VALUE:I = 0x459

.field public static final enum IN_CALL_SCREEN_TURN_OFF_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_TURN_OFF_VIDEO_VALUE:I = 0x45c

.field public static final enum IN_CALL_SCREEN_TURN_ON_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_TURN_ON_MUTE_VALUE:I = 0x458

.field public static final enum IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE_VALUE:I = 0x3ea

.field public static final enum IN_CALL_SCREEN_TURN_ON_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_TURN_ON_VIDEO_VALUE:I = 0x45b

.field public static final enum IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE_VALUE:I = 0x3eb

.field public static final enum LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG_VALUE:I = 0x4ad

.field public static final enum LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH_VALUE:I = 0x4ac

.field public static final enum MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON_VALUE:I = 0x4ba

.field public static final enum MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH_VALUE:I = 0x4bb

.field public static final enum MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG_VALUE:I = 0x4b9

.field public static final enum MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG_VALUE:I = 0x4b8

.field public static final enum MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE_VALUE:I = 0x4b0

.field public static final enum MULTISELECT_LONG_PRESS_TAP_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_LONG_PRESS_TAP_ENTRY_VALUE:I = 0x4b1

.field public static final enum MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE_VALUE:I = 0x4bc

.field public static final enum MULTISELECT_SELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_SELECT_ALL_VALUE:I = 0x4b5

.field public static final enum MULTISELECT_SINGLE_PRESS_SELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_SINGLE_PRESS_SELECT_ENTRY_VALUE:I = 0x4b2

.field public static final enum MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE_VALUE:I = 0x4b4

.field public static final enum MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY_VALUE:I = 0x4b3

.field public static final enum MULTISELECT_TAP_DELETE_ICON:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_TAP_DELETE_ICON_VALUE:I = 0x4b7

.field public static final enum MULTISELECT_UNSELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final MULTISELECT_UNSELECT_ALL_VALUE:I = 0x4b6

.field public static final enum NEW_CONTACT_FAB:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final NEW_CONTACT_FAB_VALUE:I = 0x427

.field public static final enum NEW_CONTACT_OVERFLOW:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final NEW_CONTACT_OVERFLOW_VALUE:I = 0x426

.field public static final enum NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE_VALUE:I = 0x414

.field public static final enum NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE_VALUE:I = 0x413

.field public static final enum OUTGOING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final OUTGOING_RTT_CALL_VALUE:I = 0x566

.field public static final enum OUTGOING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final OUTGOING_VIDEO_CALL_VALUE:I = 0x44d

.field public static final enum POST_CALL_PROMPT_USER_TO_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final enum POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED_VALUE:I = 0x454

.field public static final POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_VALUE:I = 0x455

.field public static final enum POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final enum POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED_VALUE:I = 0x457

.field public static final POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_VALUE:I = 0x456

.field public static final enum RCS_VIDEO_SHARE_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RCS_VIDEO_SHARE_REQUEST_ACCEPTED_VALUE:I = 0x49c

.field public static final enum RCS_VIDEO_SHARE_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RCS_VIDEO_SHARE_REQUEST_DECLINED_VALUE:I = 0x49d

.field public static final enum RCS_VIDEO_SHARE_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RCS_VIDEO_SHARE_REQUEST_RECEIVED_VALUE:I = 0x49e

.field public static final enum RCS_VIDEO_SHARE_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RCS_VIDEO_SHARE_UPGRADE_REQUESTED_VALUE:I = 0x49b

.field public static final enum REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN_VALUE:I = 0x421

.field public static final enum REJECT_INCOMING_CALL_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final REJECT_INCOMING_CALL_FROM_NOTIFICATION_VALUE:I = 0x420

.field public static final enum REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER_VALUE:I = 0x3f1

.field public static final enum REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG_VALUE:I = 0x3f3

.field public static final enum RTT_KEYBOARD_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RTT_KEYBOARD_SEND_BUTTON_CLICKED_VALUE:I = 0x56c

.field public static final enum RTT_MID_CALL_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RTT_MID_CALL_ACCEPTED_VALUE:I = 0x569

.field public static final enum RTT_MID_CALL_ENABLED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RTT_MID_CALL_ENABLED_VALUE:I = 0x568

.field public static final enum RTT_MID_CALL_REJECTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RTT_MID_CALL_REJECTED_VALUE:I = 0x56a

.field public static final enum RTT_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final RTT_SEND_BUTTON_CLICKED_VALUE:I = 0x56b

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS_VALUE:I = 0x3fb

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER_VALUE:I = 0x3f6

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_NOT_SPAM_AND_BLOCKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_NOT_SPAM_AND_BLOCKED_VALUE:I = 0x3fd

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM_VALUE:I = 0x3fc

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG_VALUE:I = 0x401

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG_VALUE:I = 0x400

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM_VALUE:I = 0x3fe

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG_VALUE:I = 0x3f8

.field public static final enum SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG_VALUE:I = 0x3f7

.field public static final enum SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE_VALUE:I = 0x412

.field public static final enum SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM_VALUE:I = 0x403

.field public static final enum SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM_VALUE:I = 0x402

.field public static final enum SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE_VALUE:I = 0x411

.field public static final enum STORAGE_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final STORAGE_PERMISSION_DENIED_VALUE:I = 0x431

.field public static final enum STORAGE_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final STORAGE_PERMISSION_DISPLAYED_VALUE:I = 0x42d

.field public static final enum STORAGE_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final STORAGE_PERMISSION_GRANTED_VALUE:I = 0x430

.field public static final enum STORAGE_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final STORAGE_PERMISSION_REQUESTED_VALUE:I = 0x42e

.field public static final enum STORAGE_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final STORAGE_PERMISSION_SETTINGS_VALUE:I = 0x42f

.field public static final enum UNKNOWN_AOSP_EVENT_TYPE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final UNKNOWN_AOSP_EVENT_TYPE_VALUE:I = 0x3e8

.field public static final enum UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN_VALUE:I = 0x4d4

.field public static final enum USER_ACTION_BLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final USER_ACTION_BLOCKED_NUMBER_VALUE:I = 0x3f4

.field public static final enum USER_ACTION_UNBLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final USER_ACTION_UNBLOCKED_NUMBER_VALUE:I = 0x3f5

.field public static final enum USER_DELETED_CALL_LOG_ITEM:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final USER_DELETED_CALL_LOG_ITEM_VALUE:I = 0x418

.field public static final enum USER_DID_NOT_PARTICIPATE_IN_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final USER_DID_NOT_PARTICIPATE_IN_CALL_VALUE:I = 0x417

.field public static final enum USER_PARTICIPATED_IN_A_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final USER_PARTICIPATED_IN_A_CALL_VALUE:I = 0x404

.field public static final enum USER_PARTICIPATED_IN_A_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final USER_PARTICIPATED_IN_A_VIDEO_CALL_VALUE:I = 0x44f

.field public static final enum VIDEO_CALL_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final enum VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO_VALUE:I = 0x498

.field public static final VIDEO_CALL_REQUEST_ACCEPTED_VALUE:I = 0x497

.field public static final enum VIDEO_CALL_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VIDEO_CALL_REQUEST_DECLINED_VALUE:I = 0x499

.field public static final enum VIDEO_CALL_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VIDEO_CALL_REQUEST_RECEIVED_VALUE:I = 0x49a

.field public static final enum VIDEO_CALL_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VIDEO_CALL_UPGRADE_REQUESTED_VALUE:I = 0x496

.field public static final enum VIDEO_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VIDEO_CALL_WITH_INCOMING_VIDEO_CALL_VALUE:I = 0x45e

.field public static final enum VIDEO_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VIDEO_CALL_WITH_INCOMING_VOICE_CALL_VALUE:I = 0x45d

.field public static final enum VOICEMAIL_ALERT_SET_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_ALERT_SET_PIN_CLICKED_VALUE:I = 0x416

.field public static final enum VOICEMAIL_ALERT_SET_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_ALERT_SET_PIN_SHOWN_VALUE:I = 0x415

.field public static final enum VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY_VALUE:I = 0x437

.field public static final enum VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION_VALUE:I = 0x438

.field public static final enum VOICEMAIL_DELETE_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_DELETE_ENTRY_VALUE:I = 0x41c

.field public static final enum VOICEMAIL_DIALER_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_DIALER_TOS_ACCEPTED_VALUE:I = 0x4c1

.field public static final enum VOICEMAIL_DIALER_TOS_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_DIALER_TOS_CREATED_VALUE:I = 0x4c0

.field public static final enum VOICEMAIL_DIALER_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_DIALER_TOS_DECLINE_CLICKED_VALUE:I = 0x4c2

.field public static final enum VOICEMAIL_EXPAND_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_EXPAND_ENTRY_VALUE:I = 0x41d

.field public static final enum VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY_VALUE:I = 0x41f

.field public static final enum VOICEMAIL_PLAY_AUDIO_DIRECTLY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_PLAY_AUDIO_DIRECTLY_VALUE:I = 0x41e

.field public static final enum VOICEMAIL_VVM3_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_ACCEPTED_VALUE:I = 0x429

.field public static final enum VOICEMAIL_VVM3_TOS_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_DECLINED_VALUE:I = 0x42a

.field public static final enum VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN_VALUE:I = 0x42c

.field public static final enum VOICEMAIL_VVM3_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_DECLINE_CLICKED_VALUE:I = 0x42b

.field public static final enum VOICEMAIL_VVM3_TOS_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_SHOWN_VALUE:I = 0x428

.field public static final enum VOICEMAIL_VVM3_TOS_V2_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_V2_ACCEPTED_VALUE:I = 0x4be

.field public static final enum VOICEMAIL_VVM3_TOS_V2_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_V2_CREATED_VALUE:I = 0x4bd

.field public static final enum VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED_VALUE:I = 0x4bf

.field public static final enum VOICE_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICE_CALL_WITH_INCOMING_VIDEO_CALL_VALUE:I = 0x460

.field public static final enum VOICE_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VOICE_CALL_WITH_INCOMING_VOICE_CALL_VALUE:I = 0x45f

.field public static final enum VVM_ACTIVATION_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_ACTIVATION_COMPLETED_VALUE:I = 0x473

.field public static final enum VVM_ACTIVATION_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_ACTIVATION_STARTED_VALUE:I = 0x472

.field public static final enum VVM_ADVANCED_SETINGS_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_ADVANCED_SETINGS_CLICKED_VALUE:I = 0x483

.field public static final enum VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER_VALUE:I = 0x46e

.field public static final enum VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK_VALUE:I = 0x4a6

.field public static final enum VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF_VALUE:I = 0x46f

.field public static final enum VVM_AUTO_RETRY_ACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_AUTO_RETRY_ACTIVATION_VALUE:I = 0x474

.field public static final enum VVM_AUTO_RETRY_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_AUTO_RETRY_SYNC_VALUE:I = 0x479

.field public static final enum VVM_CALL_VOICEMAIL_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_CALL_VOICEMAIL_CLICKED_VALUE:I = 0x489

.field public static final enum VVM_CHANGE_AIRPLANE_MODE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_CHANGE_AIRPLANE_MODE_CLICKED_VALUE:I = 0x488

.field public static final enum VVM_CHANGE_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_CHANGE_PIN_CLICKED_VALUE:I = 0x47d

.field public static final enum VVM_CHANGE_PIN_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_CHANGE_PIN_COMPLETED_VALUE:I = 0x47e

.field public static final enum VVM_CHANGE_RINGTONE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_CHANGE_RINGTONE_CLICKED_VALUE:I = 0x47f

.field public static final enum VVM_CHANGE_VIBRATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_CHANGE_VIBRATION_CLICKED_VALUE:I = 0x480

.field public static final enum VVM_NOTIFICATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_NOTIFICATION_CLICKED_VALUE:I = 0x484

.field public static final enum VVM_NOTIFICATION_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_NOTIFICATION_CREATED_VALUE:I = 0x485

.field public static final enum VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION_VALUE:I = 0x486

.field public static final enum VVM_PROVISIONING_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_PROVISIONING_COMPLETED_VALUE:I = 0x476

.field public static final enum VVM_PROVISIONING_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_PROVISIONING_STARTED_VALUE:I = 0x475

.field public static final enum VVM_QUOTA_CHECK_UNAVAILABLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_QUOTA_CHECK_UNAVAILABLE_VALUE:I = 0x48a

.field public static final enum VVM_SETTINGS_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_SETTINGS_VIEWED_VALUE:I = 0x47c

.field public static final enum VVM_SHARE_PRESSED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_SHARE_PRESSED_VALUE:I = 0x44c

.field public static final enum VVM_SHARE_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_SHARE_VISIBLE_VALUE:I = 0x44b

.field public static final enum VVM_STATUS_CHECK_REACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_STATUS_CHECK_REACTIVATION_VALUE:I = 0x4a5

.field public static final enum VVM_STATUS_CHECK_READY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_STATUS_CHECK_READY_VALUE:I = 0x4a4

.field public static final enum VVM_SYNC_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_SYNC_COMPLETED_VALUE:I = 0x478

.field public static final enum VVM_SYNC_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_SYNC_STARTED_VALUE:I = 0x477

.field public static final enum VVM_TAB_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TAB_VIEWED_VALUE:I = 0x44a

.field public static final enum VVM_TAB_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TAB_VISIBLE_VALUE:I = 0x470

.field public static final enum VVM_TRANSCRIPTION_DOWNLOADED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_DOWNLOADED_VALUE:I = 0x487

.field public static final enum VVM_TRANSCRIPTION_REQUEST_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_REQUEST_RETRY_VALUE:I = 0x4ce

.field public static final enum VVM_TRANSCRIPTION_REQUEST_SENT:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_REQUEST_SENT_VALUE:I = 0x4cd

.field public static final enum VVM_TRANSCRIPTION_RESPONSE_EMPTY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_RESPONSE_EMPTY_VALUE:I = 0x4d0

.field public static final enum VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR_VALUE:I = 0x4d3

.field public static final enum VVM_TRANSCRIPTION_RESPONSE_INVALID:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_RESPONSE_INVALID_VALUE:I = 0x4d1

.field public static final enum VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR_VALUE:I = 0x4d2

.field public static final enum VVM_TRANSCRIPTION_RESPONSE_SUCCESS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_TRANSCRIPTION_RESPONSE_SUCCESS_VALUE:I = 0x4cf

.field public static final enum VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_UNBUNDLED_EVENT_RECEIVED_VALUE:I = 0x471

.field public static final enum VVM_USER_DISABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_DISABLED_IN_SETTINGS_VALUE:I = 0x482

.field public static final enum VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO_VALUE:I = 0x464

.field public static final enum VVM_USER_DISMISSED_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_DISMISSED_VM_FULL_PROMO_VALUE:I = 0x465

.field public static final enum VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO_VALUE:I = 0x466

.field public static final enum VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO_VALUE:I = 0x467

.field public static final enum VVM_USER_ENABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_ENABLED_IN_SETTINGS_VALUE:I = 0x481

.field public static final enum VVM_USER_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_RETRY_VALUE:I = 0x47a

.field public static final enum VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE_VALUE:I = 0x46a

.field public static final enum VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO_VALUE:I = 0x468

.field public static final enum VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE_VALUE:I = 0x46b

.field public static final enum VVM_USER_SHOWN_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_SHOWN_VM_FULL_PROMO_VALUE:I = 0x469

.field public static final enum VVM_USER_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_SYNC_VALUE:I = 0x47b

.field public static final enum VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS_VALUE:I = 0x46d

.field public static final enum VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

.field public static final VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS_VALUE:I = 0x46c

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/DialerImpression$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "UNKNOWN_AOSP_EVENT_TYPE"

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->UNKNOWN_AOSP_EVENT_TYPE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 38
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "APP_LAUNCHED"

    const/4 v3, 0x1

    const/16 v4, 0x3e9

    invoke-direct {v0, v1, v3, v4}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->APP_LAUNCHED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 46
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE"

    const/4 v4, 0x2

    const/16 v5, 0x3ea

    invoke-direct {v0, v1, v4, v5}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 54
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE"

    const/4 v5, 0x3

    const/16 v6, 0x3eb

    invoke-direct {v0, v1, v5, v6}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 63
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_BLOCK_REPORT_SPAM"

    const/4 v6, 0x4

    const/16 v7, 0x3ec

    invoke-direct {v0, v1, v6, v7}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 71
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_BLOCK_NUMBER"

    const/4 v7, 0x5

    const/16 v8, 0x3ed

    invoke-direct {v0, v1, v7, v8}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 83
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_UNBLOCK_NUMBER"

    const/4 v8, 0x6

    const/16 v9, 0x3ee

    invoke-direct {v0, v1, v8, v9}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 91
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_REPORT_AS_NOT_SPAM"

    const/4 v9, 0x7

    const/16 v10, 0x3ef

    invoke-direct {v0, v1, v9, v10}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 99
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "DIALOG_ACTION_CONFIRM_NUMBER_NOT_SPAM"

    const/16 v10, 0x8

    const/16 v11, 0x3f0

    invoke-direct {v0, v1, v10, v11}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->DIALOG_ACTION_CONFIRM_NUMBER_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 109
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER"

    const/16 v11, 0x9

    const/16 v12, 0x3f1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 123
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "DIALOG_ACTION_CONFIRM_NUMBER_SPAM_INDIRECTLY_VIA_BLOCK_NUMBER"

    const/16 v12, 0xa

    const/16 v13, 0x3f2

    invoke-direct {v0, v1, v12, v13}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->DIALOG_ACTION_CONFIRM_NUMBER_SPAM_INDIRECTLY_VIA_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 133
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG"

    const/16 v13, 0xb

    const/16 v14, 0x3f3

    invoke-direct {v0, v1, v13, v14}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 141
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "USER_ACTION_BLOCKED_NUMBER"

    const/16 v14, 0xc

    const/16 v15, 0x3f4

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_BLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 149
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "USER_ACTION_UNBLOCKED_NUMBER"

    const/16 v15, 0xd

    const/16 v14, 0x3f5

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_UNBLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 161
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER"

    const/16 v14, 0xe

    const/16 v15, 0x3f6

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 170
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG"

    const/16 v15, 0xf

    const/16 v14, 0x3f7

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 179
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG"

    const/16 v14, 0x10

    const/16 v15, 0x3f8

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 187
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS"

    const/16 v15, 0x11

    const/16 v14, 0x3fb

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 195
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM"

    const/16 v14, 0x12

    const/16 v15, 0x3fc

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 199
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_NOT_SPAM_AND_BLOCKED"

    const/16 v15, 0x13

    const/16 v14, 0x3fd

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_NOT_SPAM_AND_BLOCKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 207
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM"

    const/16 v14, 0x14

    const/16 v15, 0x3fe

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 215
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG"

    const/16 v15, 0x15

    const/16 v14, 0x400

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 223
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG"

    const/16 v14, 0x16

    const/16 v15, 0x401

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 232
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM"

    const/16 v14, 0x17

    const/16 v15, 0x402

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 241
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM"

    const/16 v14, 0x18

    const/16 v15, 0x403

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 252
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "USER_PARTICIPATED_IN_A_CALL"

    const/16 v14, 0x19

    const/16 v15, 0x404

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_PARTICIPATED_IN_A_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 260
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "INCOMING_SPAM_CALL"

    const/16 v14, 0x1a

    const/16 v15, 0x405

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 268
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "INCOMING_NON_SPAM_CALL"

    const/16 v14, 0x1b

    const/16 v15, 0x406

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_NON_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 276
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE"

    const/16 v14, 0x1c

    const/16 v15, 0x411

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 284
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE"

    const/16 v14, 0x1d

    const/16 v15, 0x412

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 292
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE"

    const/16 v14, 0x1e

    const/16 v15, 0x413

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 300
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE"

    const/16 v14, 0x1f

    const/16 v15, 0x414

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 309
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_ALERT_SET_PIN_SHOWN"

    const/16 v14, 0x20

    const/16 v15, 0x415

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 317
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_ALERT_SET_PIN_CLICKED"

    const/16 v14, 0x21

    const/16 v15, 0x416

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 325
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "USER_DID_NOT_PARTICIPATE_IN_CALL"

    const/16 v14, 0x22

    const/16 v15, 0x417

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_DID_NOT_PARTICIPATE_IN_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 333
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "USER_DELETED_CALL_LOG_ITEM"

    const/16 v14, 0x23

    const/16 v15, 0x418

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_DELETED_CALL_LOG_ITEM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 341
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_SEND_MESSAGE"

    const/16 v14, 0x24

    const/16 v15, 0x419

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 349
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_ADD_TO_CONTACT"

    const/16 v14, 0x25

    const/16 v15, 0x41a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_ADD_TO_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 357
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_CREATE_NEW_CONTACT"

    const/16 v14, 0x26

    const/16 v15, 0x41b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CREATE_NEW_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 365
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_DELETE_ENTRY"

    const/16 v14, 0x27

    const/16 v15, 0x41c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DELETE_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 374
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_EXPAND_ENTRY"

    const/16 v14, 0x28

    const/16 v15, 0x41d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_EXPAND_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 383
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_PLAY_AUDIO_DIRECTLY"

    const/16 v14, 0x29

    const/16 v15, 0x41e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_DIRECTLY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 391
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY"

    const/16 v14, 0x2a

    const/16 v15, 0x41f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 399
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "REJECT_INCOMING_CALL_FROM_NOTIFICATION"

    const/16 v14, 0x2b

    const/16 v15, 0x420

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 407
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN"

    const/16 v14, 0x2c

    const/16 v15, 0x421

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 417
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_CONTEXT_MENU_BLOCK_REPORT_SPAM"

    const/16 v14, 0x2d

    const/16 v15, 0x422

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 421
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_CONTEXT_MENU_BLOCK_NUMBER"

    const/16 v14, 0x2e

    const/16 v15, 0x423

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 425
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_CONTEXT_MENU_UNBLOCK_NUMBER"

    const/16 v14, 0x2f

    const/16 v15, 0x424

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 429
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_CONTEXT_MENU_REPORT_AS_NOT_SPAM"

    const/16 v14, 0x30

    const/16 v15, 0x425

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 433
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "NEW_CONTACT_OVERFLOW"

    const/16 v14, 0x31

    const/16 v15, 0x426

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->NEW_CONTACT_OVERFLOW:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 437
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "NEW_CONTACT_FAB"

    const/16 v14, 0x32

    const/16 v15, 0x427

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->NEW_CONTACT_FAB:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 445
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_SHOWN"

    const/16 v14, 0x33

    const/16 v15, 0x428

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 453
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_ACCEPTED"

    const/16 v14, 0x34

    const/16 v15, 0x429

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 461
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_DECLINED"

    const/16 v14, 0x35

    const/16 v15, 0x42a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 470
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_DECLINE_CLICKED"

    const/16 v14, 0x36

    const/16 v15, 0x42b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 479
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN"

    const/16 v14, 0x37

    const/16 v15, 0x42c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 488
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "STORAGE_PERMISSION_DISPLAYED"

    const/16 v14, 0x38

    const/16 v15, 0x42d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 492
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CAMERA_PERMISSION_DISPLAYED"

    const/16 v14, 0x39

    const/16 v15, 0x432

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 500
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "STORAGE_PERMISSION_REQUESTED"

    const/16 v14, 0x3a

    const/16 v15, 0x42e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 504
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CAMERA_PERMISSION_REQUESTED"

    const/16 v14, 0x3b

    const/16 v15, 0x433

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 513
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "STORAGE_PERMISSION_SETTINGS"

    const/16 v14, 0x3c

    const/16 v15, 0x42f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 517
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CAMERA_PERMISSION_SETTINGS"

    const/16 v14, 0x3d

    const/16 v15, 0x434

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 525
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "STORAGE_PERMISSION_GRANTED"

    const/16 v14, 0x3e

    const/16 v15, 0x430

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 529
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CAMERA_PERMISSION_GRANTED"

    const/16 v14, 0x3f

    const/16 v15, 0x435

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 537
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "STORAGE_PERMISSION_DENIED"

    const/16 v14, 0x40

    const/16 v15, 0x431

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 541
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CAMERA_PERMISSION_DENIED"

    const/16 v14, 0x41

    const/16 v15, 0x436

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 549
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY"

    const/16 v14, 0x42

    const/16 v15, 0x437

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 558
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION"

    const/16 v14, 0x43

    const/16 v15, 0x438

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 566
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_BACKUP"

    const/16 v14, 0x44

    const/16 v15, 0x439

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 571
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_FULL_BACKUP"

    const/16 v14, 0x45

    const/16 v15, 0x43a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_FULL_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 576
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_BACKUP_DISABLED"

    const/16 v14, 0x46

    const/16 v15, 0x43b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 581
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_VOICEMAIL_BACKED_UP"

    const/16 v14, 0x47

    const/16 v15, 0x43c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_VOICEMAIL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 586
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_FULL_BACKED_UP"

    const/16 v14, 0x48

    const/16 v15, 0x43d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_FULL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 591
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_BACKUP_JSON_EXCEPTION"

    const/16 v14, 0x49

    const/16 v15, 0x43e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 596
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_QUOTA_EXCEEDED"

    const/16 v14, 0x4a

    const/16 v15, 0x43f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_QUOTA_EXCEEDED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 601
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_RESTORE"

    const/16 v14, 0x4b

    const/16 v15, 0x440

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 606
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_RESTORED_FILE"

    const/16 v14, 0x4c

    const/16 v15, 0x441

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_RESTORED_FILE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 611
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_RESTORED_VOICEMAIL"

    const/16 v14, 0x4d

    const/16 v15, 0x442

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_RESTORED_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 616
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_RESTORE_FINISHED"

    const/16 v14, 0x4e

    const/16 v15, 0x443

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 621
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_RESTORE_DISABLED"

    const/16 v14, 0x4f

    const/16 v15, 0x444

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 626
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_RESTORE_JSON_EXCEPTION"

    const/16 v14, 0x50

    const/16 v15, 0x445

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 631
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_RESTORE_IO_EXCEPTION"

    const/16 v14, 0x51

    const/16 v15, 0x446

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_IO_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 636
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_MAX_VM_BACKUP_REACHED"

    const/16 v14, 0x52

    const/16 v15, 0x447

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_MAX_VM_BACKUP_REACHED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 641
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EVENT_ANSWER_HINT_ACTIVATED"

    const/16 v14, 0x53

    const/16 v15, 0x448

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EVENT_ANSWER_HINT_ACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 645
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EVENT_ANSWER_HINT_DEACTIVATED"

    const/16 v14, 0x54

    const/16 v15, 0x449

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EVENT_ANSWER_HINT_DEACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 649
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TAB_VIEWED"

    const/16 v14, 0x55

    const/16 v15, 0x44a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 653
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_SHARE_VISIBLE"

    const/16 v14, 0x56

    const/16 v15, 0x44b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 657
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_SHARE_PRESSED"

    const/16 v14, 0x57

    const/16 v15, 0x44c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_PRESSED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 661
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "OUTGOING_VIDEO_CALL"

    const/16 v14, 0x58

    const/16 v15, 0x44d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->OUTGOING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 665
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "INCOMING_VIDEO_CALL"

    const/16 v14, 0x59

    const/16 v15, 0x44e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 669
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "USER_PARTICIPATED_IN_A_VIDEO_CALL"

    const/16 v14, 0x5a

    const/16 v15, 0x44f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_PARTICIPATED_IN_A_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 673
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_ON_RESTORE_VM_DUPLICATE_NOT_RESTORING"

    const/16 v14, 0x5b

    const/16 v15, 0x450

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_VM_DUPLICATE_NOT_RESTORING:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 682
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_LOG_SHARE_AND_CALL"

    const/16 v14, 0x5c

    const/16 v15, 0x451

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SHARE_AND_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 686
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL"

    const/16 v14, 0x5d

    const/16 v15, 0x452

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 690
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY"

    const/16 v14, 0x5e

    const/16 v15, 0x453

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 694
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED"

    const/16 v14, 0x5f

    const/16 v15, 0x454

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 698
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "POST_CALL_PROMPT_USER_TO_SEND_MESSAGE"

    const/16 v14, 0x60

    const/16 v15, 0x455

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 702
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE"

    const/16 v14, 0x61

    const/16 v15, 0x456

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 706
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED"

    const/16 v14, 0x62

    const/16 v15, 0x457

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 710
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_TURN_ON_MUTE"

    const/16 v14, 0x63

    const/16 v15, 0x458

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 714
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_TURN_OFF_MUTE"

    const/16 v14, 0x64

    const/16 v15, 0x459

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 718
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_SWAP_CAMERA"

    const/16 v14, 0x65

    const/16 v15, 0x45a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_SWAP_CAMERA:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 722
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_TURN_ON_VIDEO"

    const/16 v14, 0x66

    const/16 v15, 0x45b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 726
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IN_CALL_SCREEN_TURN_OFF_VIDEO"

    const/16 v14, 0x67

    const/16 v15, 0x45c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 730
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_WITH_INCOMING_VOICE_CALL"

    const/16 v14, 0x68

    const/16 v15, 0x45d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 734
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_WITH_INCOMING_VIDEO_CALL"

    const/16 v14, 0x69

    const/16 v15, 0x45e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 738
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICE_CALL_WITH_INCOMING_VOICE_CALL"

    const/16 v14, 0x6a

    const/16 v15, 0x45f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 742
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICE_CALL_WITH_INCOMING_VIDEO_CALL"

    const/16 v14, 0x6b

    const/16 v15, 0x460

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 746
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_DETAILS_COPY_NUMBER"

    const/16 v14, 0x6c

    const/16 v15, 0x461

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_COPY_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 750
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_DETAILS_EDIT_BEFORE_CALL"

    const/16 v14, 0x6d

    const/16 v15, 0x462

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_EDIT_BEFORE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 754
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALL_DETAILS_CALL_BACK"

    const/16 v14, 0x6e

    const/16 v15, 0x463

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_CALL_BACK:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 758
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO"

    const/16 v14, 0x6f

    const/16 v15, 0x464

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 762
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_DISMISSED_VM_FULL_PROMO"

    const/16 v14, 0x70

    const/16 v15, 0x465

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 766
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO"

    const/16 v14, 0x71

    const/16 v15, 0x466

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 770
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO"

    const/16 v14, 0x72

    const/16 v15, 0x467

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 774
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO"

    const/16 v14, 0x73

    const/16 v15, 0x468

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 778
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_SHOWN_VM_FULL_PROMO"

    const/16 v14, 0x74

    const/16 v15, 0x469

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 782
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE"

    const/16 v14, 0x75

    const/16 v15, 0x46a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 786
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE"

    const/16 v14, 0x76

    const/16 v15, 0x46b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 790
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS"

    const/16 v14, 0x77

    const/16 v15, 0x46c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 794
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS"

    const/16 v14, 0x78

    const/16 v15, 0x46d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 798
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER"

    const/16 v14, 0x79

    const/16 v15, 0x46e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 802
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF"

    const/16 v14, 0x7a

    const/16 v15, 0x46f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 806
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TAB_VISIBLE"

    const/16 v14, 0x7b

    const/16 v15, 0x470

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 810
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_UNBUNDLED_EVENT_RECEIVED"

    const/16 v14, 0x7c

    const/16 v15, 0x471

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 814
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_ACTIVATION_STARTED"

    const/16 v14, 0x7d

    const/16 v15, 0x472

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 818
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_ACTIVATION_COMPLETED"

    const/16 v14, 0x7e

    const/16 v15, 0x473

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 822
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_AUTO_RETRY_ACTIVATION"

    const/16 v14, 0x7f

    const/16 v15, 0x474

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_ACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 826
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_PROVISIONING_STARTED"

    const/16 v14, 0x80

    const/16 v15, 0x475

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 830
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_PROVISIONING_COMPLETED"

    const/16 v14, 0x81

    const/16 v15, 0x476

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 834
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_SYNC_STARTED"

    const/16 v14, 0x82

    const/16 v15, 0x477

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 838
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_SYNC_COMPLETED"

    const/16 v14, 0x83

    const/16 v15, 0x478

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 842
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_AUTO_RETRY_SYNC"

    const/16 v14, 0x84

    const/16 v15, 0x479

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 846
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_RETRY"

    const/16 v14, 0x85

    const/16 v15, 0x47a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 850
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_SYNC"

    const/16 v14, 0x86

    const/16 v15, 0x47b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 854
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_SETTINGS_VIEWED"

    const/16 v14, 0x87

    const/16 v15, 0x47c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SETTINGS_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 858
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_CHANGE_PIN_CLICKED"

    const/16 v14, 0x88

    const/16 v15, 0x47d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 862
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_CHANGE_PIN_COMPLETED"

    const/16 v14, 0x89

    const/16 v15, 0x47e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 866
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_CHANGE_RINGTONE_CLICKED"

    const/16 v14, 0x8a

    const/16 v15, 0x47f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_RINGTONE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 870
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_CHANGE_VIBRATION_CLICKED"

    const/16 v14, 0x8b

    const/16 v15, 0x480

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_VIBRATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 874
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_ENABLED_IN_SETTINGS"

    const/16 v14, 0x8c

    const/16 v15, 0x481

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 878
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_USER_DISABLED_IN_SETTINGS"

    const/16 v14, 0x8d

    const/16 v15, 0x482

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 882
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_ADVANCED_SETINGS_CLICKED"

    const/16 v14, 0x8e

    const/16 v15, 0x483

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ADVANCED_SETINGS_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 886
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_NOTIFICATION_CLICKED"

    const/16 v14, 0x8f

    const/16 v15, 0x484

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 890
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_NOTIFICATION_CREATED"

    const/16 v14, 0x90

    const/16 v15, 0x485

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 894
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION"

    const/16 v14, 0x91

    const/16 v15, 0x486

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 898
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_DOWNLOADED"

    const/16 v14, 0x92

    const/16 v15, 0x487

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_DOWNLOADED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 902
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_CHANGE_AIRPLANE_MODE_CLICKED"

    const/16 v14, 0x93

    const/16 v15, 0x488

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_AIRPLANE_MODE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 906
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_CALL_VOICEMAIL_CLICKED"

    const/16 v14, 0x94

    const/16 v15, 0x489

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CALL_VOICEMAIL_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 910
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_QUOTA_CHECK_UNAVAILABLE"

    const/16 v14, 0x95

    const/16 v15, 0x48a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_QUOTA_CHECK_UNAVAILABLE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 918
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_NEW_EMERGENCY_CALL"

    const/16 v14, 0x96

    const/16 v15, 0x48b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NEW_EMERGENCY_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 922
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_CALLBACK"

    const/16 v14, 0x97

    const/16 v15, 0x48c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CALLBACK:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 926
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_NO_LOCATION_PERMISSION"

    const/16 v14, 0x98

    const/16 v15, 0x48d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NO_LOCATION_PERMISSION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 930
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION"

    const/16 v14, 0x99

    const/16 v15, 0x48e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 934
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_CANT_GET_LOCATION"

    const/16 v14, 0x9a

    const/16 v15, 0x48f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CANT_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 938
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_STALE_LOCATION"

    const/16 v14, 0x9b

    const/16 v15, 0x490

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_STALE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 942
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_INACCURATE_LOCATION"

    const/16 v14, 0x9c

    const/16 v15, 0x491

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_INACCURATE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 946
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_GOT_LOCATION"

    const/16 v14, 0x9d

    const/16 v15, 0x492

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 950
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_GOT_ADDRESS"

    const/16 v14, 0x9e

    const/16 v15, 0x493

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_ADDRESS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 954
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_GOT_MAP"

    const/16 v14, 0x9f

    const/16 v15, 0x494

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 958
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "EMERGENCY_LAUNCHED_MAP"

    const/16 v14, 0xa0

    const/16 v15, 0x495

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_LAUNCHED_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 962
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_UPGRADE_REQUESTED"

    const/16 v14, 0xa1

    const/16 v15, 0x496

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 966
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_REQUEST_ACCEPTED"

    const/16 v14, 0xa2

    const/16 v15, 0x497

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 970
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO"

    const/16 v14, 0xa3

    const/16 v15, 0x498

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 974
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_REQUEST_DECLINED"

    const/16 v14, 0xa4

    const/16 v15, 0x499

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 978
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VIDEO_CALL_REQUEST_RECEIVED"

    const/16 v14, 0xa5

    const/16 v15, 0x49a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 982
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RCS_VIDEO_SHARE_UPGRADE_REQUESTED"

    const/16 v14, 0xa6

    const/16 v15, 0x49b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 986
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RCS_VIDEO_SHARE_REQUEST_ACCEPTED"

    const/16 v14, 0xa7

    const/16 v15, 0x49c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 990
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RCS_VIDEO_SHARE_REQUEST_DECLINED"

    const/16 v14, 0xa8

    const/16 v15, 0x49d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 994
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RCS_VIDEO_SHARE_REQUEST_RECEIVED"

    const/16 v14, 0xa9

    const/16 v15, 0x49e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 998
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_UPGRADE_REQUESTED"

    const/16 v14, 0xaa

    const/16 v15, 0x49f

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1002
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_REQUEST_ACCEPTED"

    const/16 v14, 0xab

    const/16 v15, 0x4a0

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1006
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO"

    const/16 v14, 0xac

    const/16 v15, 0x4a1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1010
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_REQUEST_DECLINED"

    const/16 v14, 0xad

    const/16 v15, 0x4a2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1014
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_REQUEST_RECEIVED"

    const/16 v14, 0xae

    const/16 v15, 0x4a3

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1018
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_STATUS_CHECK_READY"

    const/16 v14, 0xaf

    const/16 v15, 0x4a4

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_STATUS_CHECK_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1022
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_STATUS_CHECK_REACTIVATION"

    const/16 v14, 0xb0

    const/16 v15, 0x4a5

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_STATUS_CHECK_REACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1026
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK"

    const/16 v14, 0xb1

    const/16 v15, 0x4a6

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1034
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BUBBLE_TURN_ON_SPEAKERPHONE"

    const/16 v14, 0xb2

    const/16 v15, 0x4a7

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1042
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BUBBLE_TURN_ON_WIRED_OR_EARPIECE"

    const/16 v14, 0xb3

    const/16 v15, 0x4a8

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1050
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BUBBLE_MUTE_CALL"

    const/16 v14, 0xb4

    const/16 v15, 0x4a9

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_MUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1058
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BUBBLE_UNMUTE_CALL"

    const/16 v14, 0xb5

    const/16 v15, 0x4aa

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_UNMUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1066
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BUBBLE_END_CALL"

    const/16 v14, 0xb6

    const/16 v15, 0x4ab

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_END_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1070
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH"

    const/16 v14, 0xb7

    const/16 v15, 0x4ac

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1078
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG"

    const/16 v14, 0xb8

    const/16 v15, 0x4ad

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1082
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_REQUESTED_FROM_SEARCH"

    const/16 v14, 0xb9

    const/16 v15, 0x4ae

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1090
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "IMS_VIDEO_REQUESTED_FROM_CALL_LOG"

    const/16 v14, 0xba

    const/16 v15, 0x4af

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1098
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE"

    const/16 v14, 0xbb

    const/16 v15, 0x4b0

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1102
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_LONG_PRESS_TAP_ENTRY"

    const/16 v14, 0xbc

    const/16 v15, 0x4b1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_TAP_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1106
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_SINGLE_PRESS_SELECT_ENTRY"

    const/16 v14, 0xbd

    const/16 v15, 0x4b2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_SELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1110
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY"

    const/16 v14, 0xbe

    const/16 v15, 0x4b3

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1114
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE"

    const/16 v14, 0xbf

    const/16 v15, 0x4b4

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1118
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_SELECT_ALL"

    const/16 v14, 0xc0

    const/16 v15, 0x4b5

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1122
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_UNSELECT_ALL"

    const/16 v14, 0xc1

    const/16 v15, 0x4b6

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_UNSELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1126
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_TAP_DELETE_ICON"

    const/16 v14, 0xc2

    const/16 v15, 0x4b7

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_TAP_DELETE_ICON:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1130
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG"

    const/16 v14, 0xc3

    const/16 v15, 0x4b8

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1134
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG"

    const/16 v14, 0xc4

    const/16 v15, 0x4b9

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1138
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON"

    const/16 v14, 0xc5

    const/16 v15, 0x4ba

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1142
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH"

    const/16 v14, 0xc6

    const/16 v15, 0x4bb

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1146
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE"

    const/16 v14, 0xc7

    const/16 v15, 0x4bc

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1154
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_V2_CREATED"

    const/16 v14, 0xc8

    const/16 v15, 0x4bd

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1158
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_V2_ACCEPTED"

    const/16 v14, 0xc9

    const/16 v15, 0x4be

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1162
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED"

    const/16 v14, 0xca

    const/16 v15, 0x4bf

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1170
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_DIALER_TOS_CREATED"

    const/16 v14, 0xcb

    const/16 v15, 0x4c0

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1174
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_DIALER_TOS_ACCEPTED"

    const/16 v14, 0xcc

    const/16 v15, 0x4c1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1178
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VOICEMAIL_DIALER_TOS_DECLINE_CLICKED"

    const/16 v14, 0xcd

    const/16 v15, 0x4c2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1187
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CREATE_NEW_CONTACT_FROM_CALL_LOG"

    const/16 v14, 0xce

    const/16 v15, 0x4c3

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1191
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CREATE_NEW_CONTACT_FROM_DIALPAD"

    const/16 v14, 0xcf

    const/16 v15, 0x4c4

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1195
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CREATE_NEW_CONTACT_FROM_VOICEMAIL"

    const/16 v14, 0xd0

    const/16 v15, 0x4c5

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1199
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CREATE_NEW_CONTACT_FROM_CALL_HISTORY"

    const/16 v14, 0xd1

    const/16 v15, 0x4c6

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1203
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "ADD_TO_A_CONTACT_FROM_CALL_LOG"

    const/16 v14, 0xd2

    const/16 v15, 0x4c7

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1207
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "ADD_TO_A_CONTACT_FROM_DIALPAD"

    const/16 v14, 0xd3

    const/16 v15, 0x4c8

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1211
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "ADD_TO_A_CONTACT_FROM_VOICEMAIL"

    const/16 v14, 0xd4

    const/16 v15, 0x4c9

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1215
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "ADD_TO_A_CONTACT_FROM_CALL_HISTORY"

    const/16 v14, 0xd5

    const/16 v15, 0x4ca

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1223
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALLER_ID_REPORTED"

    const/16 v14, 0xd6

    const/16 v15, 0x4cb

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1227
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "CALLER_ID_REPORT_FAILED"

    const/16 v14, 0xd7

    const/16 v15, 0x4cc

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORT_FAILED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1235
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "OUTGOING_RTT_CALL"

    const/16 v14, 0xd8

    const/16 v15, 0x566

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->OUTGOING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1239
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "INCOMING_RTT_CALL"

    const/16 v14, 0xd9

    const/16 v15, 0x567

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1247
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RTT_MID_CALL_ENABLED"

    const/16 v14, 0xda

    const/16 v15, 0x568

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ENABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1255
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RTT_MID_CALL_ACCEPTED"

    const/16 v14, 0xdb

    const/16 v15, 0x569

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1263
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RTT_MID_CALL_REJECTED"

    const/16 v14, 0xdc

    const/16 v15, 0x56a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_REJECTED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1271
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RTT_SEND_BUTTON_CLICKED"

    const/16 v14, 0xdd

    const/16 v15, 0x56b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1275
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "RTT_KEYBOARD_SEND_BUTTON_CLICKED"

    const/16 v14, 0xde

    const/16 v15, 0x56c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_KEYBOARD_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1283
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_REQUEST_SENT"

    const/16 v14, 0xdf

    const/16 v15, 0x4cd

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_SENT:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1287
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_REQUEST_RETRY"

    const/16 v14, 0xe0

    const/16 v15, 0x4ce

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1291
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_RESPONSE_SUCCESS"

    const/16 v14, 0xe1

    const/16 v15, 0x4cf

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_SUCCESS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1295
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_RESPONSE_EMPTY"

    const/16 v14, 0xe2

    const/16 v15, 0x4d0

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_EMPTY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1299
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_RESPONSE_INVALID"

    const/16 v14, 0xe3

    const/16 v15, 0x4d1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_INVALID:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1303
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR"

    const/16 v14, 0xe4

    const/16 v15, 0x4d2

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1307
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR"

    const/16 v14, 0xe5

    const/16 v15, 0x4d3

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1315
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN"

    const/16 v14, 0xe6

    const/16 v15, 0x4d4

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1323
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_KEY_VALUE_ON_BACKUP"

    const/16 v14, 0xe7

    const/16 v15, 0x4d7

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1327
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_KEY_VALUE_ON_RESTORE"

    const/16 v14, 0xe8

    const/16 v15, 0x4d8

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1331
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_KEY_VALUE_ON_RESTORE_FINISHED"

    const/16 v14, 0xe9

    const/16 v15, 0x4d9

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1335
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_KEY_VALUE_GET_BACKUP_SPECIFICATION"

    const/16 v14, 0xea

    const/16 v15, 0x4da

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_GET_BACKUP_SPECIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1339
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type;

    const-string v1, "BACKUP_KEY_VALUE_BACKUP_AGENT_CONSTRUCTOR"

    const/16 v14, 0xeb

    const/16 v15, 0x4db

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/DialerImpression$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_BACKUP_AGENT_CONSTRUCTOR:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v1, 0xec

    new-array v1, v1, [Lcom/android/dialer/logging/DialerImpression$Type;

    .line 25
    sget-object v14, Lcom/android/dialer/logging/DialerImpression$Type;->UNKNOWN_AOSP_EVENT_TYPE:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->APP_LAUNCHED:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->DIALOG_ACTION_CONFIRM_NUMBER_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->DIALOG_ACTION_CONFIRM_NUMBER_SPAM_INDIRECTLY_VIA_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_BLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_UNBLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_NOT_SPAM_AND_BLOCKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_PARTICIPATED_IN_A_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_NON_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_DID_NOT_PARTICIPATE_IN_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_DELETED_CALL_LOG_ITEM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_ADD_TO_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CREATE_NEW_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DELETE_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_EXPAND_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_DIRECTLY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->NEW_CONTACT_OVERFLOW:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->NEW_CONTACT_FAB:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x40

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x41

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x42

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x43

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x44

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_FULL_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x45

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x46

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_VOICEMAIL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x47

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_FULL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x48

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x49

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_QUOTA_EXCEEDED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_RESTORED_FILE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_RESTORED_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x50

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_IO_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x51

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_MAX_VM_BACKUP_REACHED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x52

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EVENT_ANSWER_HINT_ACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x53

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EVENT_ANSWER_HINT_DEACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x54

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x55

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x56

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_PRESSED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x57

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->OUTGOING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x58

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x59

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_PARTICIPATED_IN_A_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_VM_DUPLICATE_NOT_RESTORING:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SHARE_AND_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x60

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x61

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x62

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x63

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x64

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_SWAP_CAMERA:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x65

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x66

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x67

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x68

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x69

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_COPY_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_EDIT_BEFORE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_CALL_BACK:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x70

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x71

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x72

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x73

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x74

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x75

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x76

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x77

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x78

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x79

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_ACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x80

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x81

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x82

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x83

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x84

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x85

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x86

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SETTINGS_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x87

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x88

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x89

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_RINGTONE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_VIBRATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ADVANCED_SETINGS_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x90

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x91

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_DOWNLOADED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x92

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_AIRPLANE_MODE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x93

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CALL_VOICEMAIL_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x94

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_QUOTA_CHECK_UNAVAILABLE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x95

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NEW_EMERGENCY_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x96

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CALLBACK:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x97

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NO_LOCATION_PERMISSION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x98

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x99

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CANT_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_STALE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_INACCURATE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_ADDRESS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_LAUNCHED_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xab

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xac

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xad

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xae

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_STATUS_CHECK_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_STATUS_CHECK_REACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_MUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_UNMUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_END_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xba

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_TAP_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_SELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_UNSELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_TAP_DELETE_ICON:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xca

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xce

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORT_FAILED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->OUTGOING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ENABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xda

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_REJECTED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_KEYBOARD_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xde

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_SENT:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_SUCCESS:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_EMPTY:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_INVALID:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xe9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_GET_BACKUP_SPECIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    const/16 v3, 0xea

    aput-object v2, v1, v3

    const/16 v2, 0xeb

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->$VALUES:[Lcom/android/dialer/logging/DialerImpression$Type;

    .line 2901
    new-instance v0, Lcom/android/dialer/logging/DialerImpression$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/DialerImpression$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2911
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2912
    iput p3, p0, Lcom/android/dialer/logging/DialerImpression$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/DialerImpression$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const/4 p0, 0x0

    return-object p0

    .line 2878
    :pswitch_0
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_KEYBOARD_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2877
    :pswitch_1
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_SEND_BUTTON_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2876
    :pswitch_2
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_REJECTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2875
    :pswitch_3
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2874
    :pswitch_4
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RTT_MID_CALL_ENABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2873
    :pswitch_5
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2872
    :pswitch_6
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->OUTGOING_RTT_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2891
    :pswitch_7
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_BACKUP_AGENT_CONSTRUCTOR:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2890
    :pswitch_8
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_GET_BACKUP_SPECIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2889
    :pswitch_9
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2888
    :pswitch_a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2887
    :pswitch_b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_KEY_VALUE_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2886
    :pswitch_c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->UPGRADE_TO_VIDEO_CALL_BUTTON_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2885
    :pswitch_d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2884
    :pswitch_e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2883
    :pswitch_f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_INVALID:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2882
    :pswitch_10
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_EMPTY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2881
    :pswitch_11
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_SUCCESS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2880
    :pswitch_12
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2879
    :pswitch_13
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_SENT:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2871
    :pswitch_14
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORT_FAILED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2870
    :pswitch_15
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2869
    :pswitch_16
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2868
    :pswitch_17
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2867
    :pswitch_18
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2866
    :pswitch_19
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2865
    :pswitch_1a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2864
    :pswitch_1b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2863
    :pswitch_1c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_DIALPAD:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2862
    :pswitch_1d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2861
    :pswitch_1e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2860
    :pswitch_1f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2859
    :pswitch_20
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2858
    :pswitch_21
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2857
    :pswitch_22
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2856
    :pswitch_23
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2855
    :pswitch_24
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_ROTATE_AND_SHOW_ACTION_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2854
    :pswitch_25
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2853
    :pswitch_26
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2852
    :pswitch_27
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DELETE_ENTRY_VIA_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2851
    :pswitch_28
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_DISPLAY_DELETE_CONFIRMATION_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2850
    :pswitch_29
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_TAP_DELETE_ICON:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2849
    :pswitch_2a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_UNSELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2848
    :pswitch_2b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SELECT_ALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2847
    :pswitch_2c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2846
    :pswitch_2d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2845
    :pswitch_2e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_SELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2844
    :pswitch_2f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_TAP_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2843
    :pswitch_30
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2842
    :pswitch_31
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2841
    :pswitch_32
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2840
    :pswitch_33
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2839
    :pswitch_34
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2838
    :pswitch_35
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_END_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2837
    :pswitch_36
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_UNMUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2836
    :pswitch_37
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_MUTE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2835
    :pswitch_38
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2834
    :pswitch_39
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BUBBLE_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2833
    :pswitch_3a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_FAILED_DUE_TO_FAILED_QUOTA_CHECK:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2832
    :pswitch_3b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_STATUS_CHECK_REACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2831
    :pswitch_3c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_STATUS_CHECK_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2830
    :pswitch_3d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2829
    :pswitch_3e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2828
    :pswitch_3f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2827
    :pswitch_40
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2826
    :pswitch_41
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2825
    :pswitch_42
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2824
    :pswitch_43
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2823
    :pswitch_44
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2822
    :pswitch_45
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->RCS_VIDEO_SHARE_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2821
    :pswitch_46
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2820
    :pswitch_47
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2819
    :pswitch_48
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED_AS_AUDIO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2818
    :pswitch_49
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_REQUEST_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2817
    :pswitch_4a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_UPGRADE_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2816
    :pswitch_4b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_LAUNCHED_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2815
    :pswitch_4c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2814
    :pswitch_4d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_ADDRESS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2813
    :pswitch_4e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2812
    :pswitch_4f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_INACCURATE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2811
    :pswitch_50
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_STALE_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2810
    :pswitch_51
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CANT_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2809
    :pswitch_52
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2808
    :pswitch_53
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NO_LOCATION_PERMISSION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2807
    :pswitch_54
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CALLBACK:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2806
    :pswitch_55
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NEW_EMERGENCY_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2805
    :pswitch_56
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_QUOTA_CHECK_UNAVAILABLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2804
    :pswitch_57
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CALL_VOICEMAIL_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2803
    :pswitch_58
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_AIRPLANE_MODE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2802
    :pswitch_59
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_DOWNLOADED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2801
    :pswitch_5a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2800
    :pswitch_5b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2799
    :pswitch_5c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2798
    :pswitch_5d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ADVANCED_SETINGS_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2797
    :pswitch_5e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2796
    :pswitch_5f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2795
    :pswitch_60
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_VIBRATION_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2794
    :pswitch_61
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_RINGTONE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2793
    :pswitch_62
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2792
    :pswitch_63
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2791
    :pswitch_64
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SETTINGS_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2790
    :pswitch_65
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2789
    :pswitch_66
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2788
    :pswitch_67
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2787
    :pswitch_68
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2786
    :pswitch_69
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SYNC_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2785
    :pswitch_6a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2784
    :pswitch_6b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_PROVISIONING_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2783
    :pswitch_6c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_AUTO_RETRY_ACTIVATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2782
    :pswitch_6d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_COMPLETED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2781
    :pswitch_6e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ACTIVATION_STARTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2780
    :pswitch_6f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_UNBUNDLED_EVENT_RECEIVED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2779
    :pswitch_70
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2778
    :pswitch_71
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETE_TURNED_OFF:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2777
    :pswitch_72
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_ARCHIVE_AUTO_DELETED_VM_FROM_SERVER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2776
    :pswitch_73
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2775
    :pswitch_74
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2774
    :pswitch_75
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2773
    :pswitch_76
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2772
    :pswitch_77
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2771
    :pswitch_78
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2770
    :pswitch_79
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2769
    :pswitch_7a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2768
    :pswitch_7b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2767
    :pswitch_7c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2766
    :pswitch_7d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_CALL_BACK:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2765
    :pswitch_7e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_EDIT_BEFORE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2764
    :pswitch_7f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_COPY_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2763
    :pswitch_80
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2762
    :pswitch_81
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICE_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2761
    :pswitch_82
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2760
    :pswitch_83
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VIDEO_CALL_WITH_INCOMING_VOICE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2759
    :pswitch_84
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2758
    :pswitch_85
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_VIDEO:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2757
    :pswitch_86
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_SWAP_CAMERA:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2756
    :pswitch_87
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_OFF_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2755
    :pswitch_88
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_MUTE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2754
    :pswitch_89
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2753
    :pswitch_8a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2752
    :pswitch_8b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2751
    :pswitch_8c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2750
    :pswitch_8d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2749
    :pswitch_8e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2748
    :pswitch_8f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SHARE_AND_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2747
    :pswitch_90
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_VM_DUPLICATE_NOT_RESTORING:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2746
    :pswitch_91
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_PARTICIPATED_IN_A_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2745
    :pswitch_92
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2744
    :pswitch_93
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->OUTGOING_VIDEO_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2743
    :pswitch_94
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_PRESSED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2742
    :pswitch_95
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_VISIBLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2741
    :pswitch_96
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2740
    :pswitch_97
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EVENT_ANSWER_HINT_DEACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2739
    :pswitch_98
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->EVENT_ANSWER_HINT_ACTIVATED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2738
    :pswitch_99
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_MAX_VM_BACKUP_REACHED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2737
    :pswitch_9a
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_IO_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2736
    :pswitch_9b
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2735
    :pswitch_9c
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2734
    :pswitch_9d
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE_FINISHED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2733
    :pswitch_9e
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_RESTORED_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2732
    :pswitch_9f
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_RESTORED_FILE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2731
    :pswitch_a0
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_RESTORE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2730
    :pswitch_a1
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_QUOTA_EXCEEDED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2729
    :pswitch_a2
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP_JSON_EXCEPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2728
    :pswitch_a3
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_FULL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2727
    :pswitch_a4
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_VOICEMAIL_BACKED_UP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2726
    :pswitch_a5
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP_DISABLED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2725
    :pswitch_a6
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_FULL_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2724
    :pswitch_a7
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->BACKUP_ON_BACKUP:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2723
    :pswitch_a8
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2722
    :pswitch_a9
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2721
    :pswitch_aa
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2719
    :pswitch_ab
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2717
    :pswitch_ac
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2715
    :pswitch_ad
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2713
    :pswitch_ae
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CAMERA_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2720
    :pswitch_af
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2718
    :pswitch_b0
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2716
    :pswitch_b1
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2714
    :pswitch_b2
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2712
    :pswitch_b3
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2711
    :pswitch_b4
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2710
    :pswitch_b5
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2709
    :pswitch_b6
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2708
    :pswitch_b7
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2707
    :pswitch_b8
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2706
    :pswitch_b9
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->NEW_CONTACT_FAB:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2705
    :pswitch_ba
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->NEW_CONTACT_OVERFLOW:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2704
    :pswitch_bb
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2703
    :pswitch_bc
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2702
    :pswitch_bd
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2701
    :pswitch_be
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CONTEXT_MENU_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2700
    :pswitch_bf
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_ANSWER_SCREEN:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2699
    :pswitch_c0
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2698
    :pswitch_c1
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2697
    :pswitch_c2
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_DIRECTLY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2696
    :pswitch_c3
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_EXPAND_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2695
    :pswitch_c4
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DELETE_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2694
    :pswitch_c5
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CREATE_NEW_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2693
    :pswitch_c6
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_ADD_TO_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2692
    :pswitch_c7
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2691
    :pswitch_c8
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_DELETED_CALL_LOG_ITEM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2690
    :pswitch_c9
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_DID_NOT_PARTICIPATE_IN_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2689
    :pswitch_ca
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2688
    :pswitch_cb
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2687
    :pswitch_cc
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2686
    :pswitch_cd
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->NON_SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2685
    :pswitch_ce
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_NOT_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2684
    :pswitch_cf
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SHOWN_AFTER_THROTTLE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2683
    :pswitch_d0
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_NON_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2682
    :pswitch_d1
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->INCOMING_SPAM_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2681
    :pswitch_d2
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_PARTICIPATED_IN_A_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2680
    :pswitch_d3
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2679
    :pswitch_d4
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_NOTIFICATION_SERVICE_ACTION_MARK_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2678
    :pswitch_d5
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2677
    :pswitch_d6
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2676
    :pswitch_d7
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_REPORT_NUMBER_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2675
    :pswitch_d8
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_NOT_SPAM_AND_BLOCKED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2674
    :pswitch_d9
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_MARKED_NUMBER_AS_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2673
    :pswitch_da
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ADD_TO_CONTACTS:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2672
    :pswitch_db
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2671
    :pswitch_dc
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_SHOW_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2670
    :pswitch_dd
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2669
    :pswitch_de
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_UNBLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2668
    :pswitch_df
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_BLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2667
    :pswitch_e0
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2666
    :pswitch_e1
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->DIALOG_ACTION_CONFIRM_NUMBER_SPAM_INDIRECTLY_VIA_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2665
    :pswitch_e2
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2664
    :pswitch_e3
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->DIALOG_ACTION_CONFIRM_NUMBER_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2663
    :pswitch_e4
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2662
    :pswitch_e5
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2661
    :pswitch_e6
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2660
    :pswitch_e7
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2659
    :pswitch_e8
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_WIRED_OR_EARPIECE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2658
    :pswitch_e9
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->IN_CALL_SCREEN_TURN_ON_SPEAKERPHONE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2657
    :pswitch_ea
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->APP_LAUNCHED:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    .line 2656
    :pswitch_eb
    sget-object p0, Lcom/android/dialer/logging/DialerImpression$Type;->UNKNOWN_AOSP_EVENT_TYPE:Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3fb
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x400
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x411
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4d7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x566
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/DialerImpression$Type;",
            ">;"
        }
    .end annotation

    .line 2898
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/DialerImpression$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2651
    invoke-static {p0}, Lcom/android/dialer/logging/DialerImpression$Type;->forNumber(I)Lcom/android/dialer/logging/DialerImpression$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/DialerImpression$Type;
    .locals 1

    .line 25
    const-class v0, Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/DialerImpression$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/DialerImpression$Type;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->$VALUES:[Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/DialerImpression$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/DialerImpression$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 2643
    iget v0, p0, Lcom/android/dialer/logging/DialerImpression$Type;->value:I

    return v0
.end method
