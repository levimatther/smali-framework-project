.class public Lcom/gsma/services/rcs/Intents$Service;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field public static final ACTION_DEFAULT_DIALLER_CHANGE:Ljava/lang/String; = "com.tct.cs.rcs.action.DEFAULT_DIALLER_CHANGED"

.field public static final ACTION_DEFAULT_SMS_CHANGED:Ljava/lang/String; = "com.tct.cs.rcs.action.DEFAULT_SMS_CHANGED"

.field public static final ACTION_FILE_TRANSFER_ACTIVE_STATE:Ljava/lang/String; = "com.gsma.services.rcs.action.FILE_TRANSFER_ACTIVE_STATE"

.field public static final ACTION_GET_ACTIVATION_MODE:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_ACTIVATION_MODE"

.field public static final ACTION_GET_ACTIVATION_MODE_CHANGEABLE:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_ACTIVATION_MODE_CHANGEABLE"

.field public static final ACTION_GET_COMPATIBILITY:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_COMPATIBILITY"

.field public static final ACTION_GET_SERVICE_STARTING_STATE:Ljava/lang/String; = "com.gsma.services.rcs.action.GET_SERVICE_STARTING_STATE"

.field public static final ACTION_PROVISIONING_DATA_CHANGED_APPLY:Ljava/lang/String; = "com.tct.cs.rcs.action.PROVISIONING.REQUEST.DATA.CHANGED.APPLY"

.field public static final ACTION_PROVISIONING_STATE_CHANGED:Ljava/lang/String; = "com.tct.cs.rcs.action.PROVISIONING.STATE.CHANGED"

.field public static final ACTION_QUERY_RCS_SERVICE_SUPPORT:Ljava/lang/String; = "com.gsma.service.rcs.action.QUERY.RCS.SERVICE.SUPPORT"

.field public static ACTION_REGISTRATION_FEATURE_TAG_CHANGED:Ljava/lang/String; = "com.gsma.services.rcs.action.REGISTRATION_FEATURE_TAG_CHANGED"

.field public static final ACTION_SET_ACTIVATION_MODE:Ljava/lang/String; = "com.gsma.services.rcs.action.SET_ACTIVATION_MODE"

.field public static final EXTRA_GET_ACTIVATION_MODE:Ljava/lang/String; = "get_activation_mode"

.field public static final EXTRA_GET_ACTIVATION_MODE_CHANGEABLE:Ljava/lang/String; = "get_activation_mode_changeable"

.field public static final EXTRA_GET_COMPATIBILITY_CODENAME:Ljava/lang/String; = "get_compatibility_codename"

.field public static final EXTRA_GET_COMPATIBILITY_INCREMENT:Ljava/lang/String; = "get_compatibility_increment"

.field public static final EXTRA_GET_COMPATIBILITY_RESPONSE:Ljava/lang/String; = "get_compatibility_response"

.field public static final EXTRA_GET_COMPATIBILITY_SERVICE:Ljava/lang/String; = "get_compatibility_service"

.field public static final EXTRA_GET_COMPATIBILITY_VERSION:Ljava/lang/String; = "get_compatibility_version"

.field public static final EXTRA_GET_DEFAULT_DIALLER:Ljava/lang/String; = "get_default_dialler_messaging"

.field public static final EXTRA_GET_DEFAULT_SMS:Ljava/lang/String; = "get_default_sms_messaging"

.field public static final EXTRA_GET_FILE_TRANSFER_ACTIVE_STATE:Ljava/lang/String; = "get_file_transfer_active_state"

.field public static final EXTRA_GET_SERVICE_STARTING_STATE:Ljava/lang/String; = "get_service_starting_state"

.field public static final EXTRA_QUERY_RCS_SERVICE_SUPPORT:Ljava/lang/String; = "query_rcs_service_support"

.field public static final EXTRA_SET_ACTIVATION_MODE:Ljava/lang/String; = "set_activation_mode"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
