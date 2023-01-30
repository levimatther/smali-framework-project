.class public final enum Lcom/android/voicemail/impl/OmtpEvents;
.super Ljava/lang/Enum;
.source "OmtpEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/OmtpEvents$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/voicemail/impl/OmtpEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_ACTIVATING:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_ACTIVATING_SUBSEQUENT:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_DEFAULT_PIN_REPLACED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_PIN_SET:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_REQUEST_STATUS_SUCCESS:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_SERVICE_NOT_AVAILABLE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum CONFIG_STATUS_SMS_TIME_OUT:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_ALL_SOCKET_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_INVALID_PASSWORD:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_MAILBOX_NOT_INITIALIZED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_SERVICE_NOT_ACTIVATED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_SERVICE_NOT_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_UNKNOWN_DEVICE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_UNKNOWN_USER:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_AUTH_USER_IS_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_BAD_IMAP_CREDENTIAL:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_CANNOT_ESTABLISH_SSL_SESSION:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_CANNOT_RESOLVE_HOST_ON_NETWORK:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_IMAP_OPERATION_COMPLETED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_IMAP_OPERATION_STARTED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_INVALID_INITIAL_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_INVALID_PORT:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_IOE_ON_OPEN:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_MAILBOX_OPEN_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_NO_CONNECTION:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_REJECTED_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_SSL_EXCEPTION:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum DATA_SSL_INVALID_HOST_NAME:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum NOTIFICATION_IN_SERVICE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum NOTIFICATION_SERVICE_LOST:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum OTHER_SOURCE_REMOVED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_NEW_USER_SETUP_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_SPG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_SPG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_STATUS_SMS_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_SUBSCRIBER_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_SUBSCRIBER_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_SUBSCRIBER_UNKNOWN:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_VMG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_VMG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

.field public static final enum VVM3_VMG_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;


# instance fields
.field private final mIsSuccess:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_REQUEST_STATUS_SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_REQUEST_STATUS_SUCCESS:Lcom/android/voicemail/impl/OmtpEvents;

    .line 33
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_PIN_SET"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_PIN_SET:Lcom/android/voicemail/impl/OmtpEvents;

    .line 35
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_DEFAULT_PIN_REPLACED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_DEFAULT_PIN_REPLACED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 36
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_ACTIVATING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_ACTIVATING:Lcom/android/voicemail/impl/OmtpEvents;

    .line 38
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_ACTIVATING_SUBSEQUENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_ACTIVATING_SUBSEQUENT:Lcom/android/voicemail/impl/OmtpEvents;

    .line 39
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_STATUS_SMS_TIME_OUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_STATUS_SMS_TIME_OUT:Lcom/android/voicemail/impl/OmtpEvents;

    .line 40
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "CONFIG_SERVICE_NOT_AVAILABLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_SERVICE_NOT_AVAILABLE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 45
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_IMAP_OPERATION_STARTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v4, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_STARTED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 47
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_IMAP_OPERATION_COMPLETED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v4, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_COMPLETED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 49
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_INVALID_PORT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_PORT:Lcom/android/voicemail/impl/OmtpEvents;

    .line 51
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_NO_CONNECTION_CELLULAR_REQUIRED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 53
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_NO_CONNECTION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION:Lcom/android/voicemail/impl/OmtpEvents;

    .line 55
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_CANNOT_RESOLVE_HOST_ON_NETWORK"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_CANNOT_RESOLVE_HOST_ON_NETWORK:Lcom/android/voicemail/impl/OmtpEvents;

    .line 57
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_ALL_SOCKET_CONNECTION_FAILED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_ALL_SOCKET_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 60
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_CANNOT_ESTABLISH_SSL_SESSION"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_CANNOT_ESTABLISH_SSL_SESSION:Lcom/android/voicemail/impl/OmtpEvents;

    .line 62
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_SSL_INVALID_HOST_NAME"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_INVALID_HOST_NAME:Lcom/android/voicemail/impl/OmtpEvents;

    .line 64
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_BAD_IMAP_CREDENTIAL"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_BAD_IMAP_CREDENTIAL:Lcom/android/voicemail/impl/OmtpEvents;

    .line 66
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_UNKNOWN_USER"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_USER:Lcom/android/voicemail/impl/OmtpEvents;

    .line 67
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_UNKNOWN_DEVICE"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_DEVICE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 68
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_INVALID_PASSWORD"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_INVALID_PASSWORD:Lcom/android/voicemail/impl/OmtpEvents;

    .line 69
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_MAILBOX_NOT_INITIALIZED"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_MAILBOX_NOT_INITIALIZED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 70
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_SERVICE_NOT_PROVISIONED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 71
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_SERVICE_NOT_ACTIVATED"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_ACTIVATED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 72
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_AUTH_USER_IS_BLOCKED"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_USER_IS_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 75
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_REJECTED_SERVER_RESPONSE"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_REJECTED_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 77
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_INVALID_INITIAL_SERVER_RESPONSE"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_INITIAL_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 80
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_IOE_ON_OPEN"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IOE_ON_OPEN:Lcom/android/voicemail/impl/OmtpEvents;

    .line 82
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_MAILBOX_OPEN_FAILED"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_MAILBOX_OPEN_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 85
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_GENERIC_IMAP_IOE"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 88
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "DATA_SSL_EXCEPTION"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v4}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_EXCEPTION:Lcom/android/voicemail/impl/OmtpEvents;

    .line 93
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "NOTIFICATION_IN_SERVICE"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v5, v3}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->NOTIFICATION_IN_SERVICE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 95
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "NOTIFICATION_SERVICE_LOST"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v5, v2}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->NOTIFICATION_SERVICE_LOST:Lcom/android/voicemail/impl/OmtpEvents;

    .line 98
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "OTHER_SOURCE_REMOVED"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15, v6, v2}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->OTHER_SOURCE_REMOVED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 101
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_NEW_USER_SETUP_FAILED"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_NEW_USER_SETUP_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 103
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_VMG_DNS_FAILURE"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 104
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_SPG_DNS_FAILURE"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

    .line 105
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_VMG_CONNECTION_FAILED"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 106
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_SPG_CONNECTION_FAILED"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 107
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_VMG_TIMEOUT"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;

    .line 108
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_STATUS_SMS_TIMEOUT"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_STATUS_SMS_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;

    .line 110
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_SUBSCRIBER_PROVISIONED"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 111
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_SUBSCRIBER_BLOCKED"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    .line 112
    new-instance v0, Lcom/android/voicemail/impl/OmtpEvents;

    const-string v1, "VVM3_SUBSCRIBER_UNKNOWN"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/android/voicemail/impl/OmtpEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_UNKNOWN:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v1, 0x2b

    new-array v1, v1, [Lcom/android/voicemail/impl/OmtpEvents;

    .line 28
    sget-object v15, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_REQUEST_STATUS_SUCCESS:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_PIN_SET:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_DEFAULT_PIN_REPLACED:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_ACTIVATING:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_ACTIVATING_SUBSEQUENT:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_STATUS_SMS_TIME_OUT:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_SERVICE_NOT_AVAILABLE:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_STARTED:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IMAP_OPERATION_COMPLETED:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_PORT:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION_CELLULAR_REQUIRED:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_NO_CONNECTION:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_CANNOT_RESOLVE_HOST_ON_NETWORK:Lcom/android/voicemail/impl/OmtpEvents;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_ALL_SOCKET_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_CANNOT_ESTABLISH_SSL_SESSION:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_INVALID_HOST_NAME:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_BAD_IMAP_CREDENTIAL:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_USER:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_UNKNOWN_DEVICE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_INVALID_PASSWORD:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_MAILBOX_NOT_INITIALIZED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_SERVICE_NOT_ACTIVATED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_AUTH_USER_IS_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_REJECTED_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_INVALID_INITIAL_SERVER_RESPONSE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_IOE_ON_OPEN:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_MAILBOX_OPEN_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_GENERIC_IMAP_IOE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->DATA_SSL_EXCEPTION:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->NOTIFICATION_IN_SERVICE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->NOTIFICATION_SERVICE_LOST:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->OTHER_SOURCE_REMOVED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_NEW_USER_SETUP_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_DNS_FAILURE:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SPG_CONNECTION_FAILED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_VMG_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_STATUS_SMS_TIMEOUT:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_PROVISIONED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/voicemail/impl/OmtpEvents;->VVM3_SUBSCRIBER_BLOCKED:Lcom/android/voicemail/impl/OmtpEvents;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/voicemail/impl/OmtpEvents;->$VALUES:[Lcom/android/voicemail/impl/OmtpEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x4

    .line 140
    iput p1, p0, Lcom/android/voicemail/impl/OmtpEvents;->mType:I

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/android/voicemail/impl/OmtpEvents;->mIsSuccess:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lcom/android/voicemail/impl/OmtpEvents;->mType:I

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/android/voicemail/impl/OmtpEvents;->mIsSuccess:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/android/voicemail/impl/OmtpEvents;->mType:I

    .line 131
    iput-boolean p4, p0, Lcom/android/voicemail/impl/OmtpEvents;->mIsSuccess:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/voicemail/impl/OmtpEvents;
    .locals 1

    .line 28
    const-class v0, Lcom/android/voicemail/impl/OmtpEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/voicemail/impl/OmtpEvents;

    return-object p0
.end method

.method public static values()[Lcom/android/voicemail/impl/OmtpEvents;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/voicemail/impl/OmtpEvents;->$VALUES:[Lcom/android/voicemail/impl/OmtpEvents;

    invoke-virtual {v0}, [Lcom/android/voicemail/impl/OmtpEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/voicemail/impl/OmtpEvents;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/voicemail/impl/OmtpEvents;->mType:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/android/voicemail/impl/OmtpEvents;->mIsSuccess:Z

    return v0
.end method
