.class public Lcom/android/voicemail/impl/OmtpConstants;
.super Ljava/lang/Object;
.source "OmtpConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/OmtpConstants$ChangePinResult;
    }
.end annotation


# static fields
.field public static final ACTIVATE_REQUEST:Ljava/lang/String; = "Activate"

.field public static final APPLICATION_PORT:Ljava/lang/String; = "pt"

.field public static final CHANGE_PIN_INVALID_CHARACTER:I = 0x5

.field public static final CHANGE_PIN_MISMATCH:I = 0x4

.field public static final CHANGE_PIN_SUCCESS:I = 0x0

.field public static final CHANGE_PIN_SYSTEM_ERROR:I = 0x6

.field public static final CHANGE_PIN_TOO_LONG:I = 0x2

.field public static final CHANGE_PIN_TOO_SHORT:I = 0x1

.field public static final CHANGE_PIN_TOO_WEAK:I = 0x3

.field public static final CLIENT_SMS_DESTINATION_NUMBER:Ljava/lang/String; = "dn"

.field public static final CLIENT_TYPE:Ljava/lang/String; = "ct"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "t"

.field public static final CONTENT_TYPE_VALUES:[Ljava/lang/String;

.field public static final DATE_TIME_FORMAT:Ljava/lang/String; = "dd/MM/yyyy HH:mm Z"

.field public static final DEACTIVATE_REQUEST:Ljava/lang/String; = "Deactivate"

.field public static final ECC:Ljava/lang/String; = "e"

.field public static final FAX:Ljava/lang/String; = "f"

.field public static final GREETINGS_UPDATE:Ljava/lang/String; = "GU"

.field public static final IMAP_CHANGE_TUI_PWD_FORMAT:Ljava/lang/String; = "XCHANGE_TUI_PWD PWD=%1$s OLD_PWD=%2$s"

.field public static final IMAP_CHANGE_VM_LANG_FORMAT:Ljava/lang/String; = "XCHANGE_VM_LANG LANG=%1$s"

.field public static final IMAP_CLOSE_NUT:Ljava/lang/String; = "XCLOSE_NUT"

.field public static final IMAP_PASSWORD:Ljava/lang/String; = "pw"

.field public static final IMAP_PORT:Ljava/lang/String; = "ipt"

.field public static final IMAP_USER_NAME:Ljava/lang/String; = "u"

.field public static final INFOTAINMENT:Ljava/lang/String; = "i"

.field public static final MAILBOX_UNKNOWN:Ljava/lang/String; = "3"

.field public static final MAILBOX_UPDATE:Ljava/lang/String; = "MBU"

.field public static final MESSAGE_LENGTH:Ljava/lang/String; = "l"

.field public static final MESSAGE_UID:Ljava/lang/String; = "id"

.field public static final NEW_MESSAGE:Ljava/lang/String; = "NM"

.field public static final NUM_MESSAGE_COUNT:Ljava/lang/String; = "c"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "pv"

.field public static final PROTOCOL_VERSION1_1:Ljava/lang/String; = "11"

.field public static final PROTOCOL_VERSION1_2:Ljava/lang/String; = "12"

.field public static final PROTOCOL_VERSION1_3:Ljava/lang/String; = "13"

.field public static final PROVISIONING_STATUS:Ljava/lang/String; = "st"

.field public static final PROVISIONING_STATUS_VALUES:[Ljava/lang/String;

.field public static final RESPONSE_CHANGE_PIN_INVALID_CHARACTER:Ljava/lang/String; = "password contains invalid characters"

.field public static final RESPONSE_CHANGE_PIN_MISMATCH:Ljava/lang/String; = "old password mismatch"

.field public static final RESPONSE_CHANGE_PIN_TOO_LONG:Ljava/lang/String; = "password too long"

.field public static final RESPONSE_CHANGE_PIN_TOO_SHORT:Ljava/lang/String; = "password too short"

.field public static final RESPONSE_CHANGE_PIN_TOO_WEAK:Ljava/lang/String; = "password too weak"

.field public static final RETURN_CODE:Ljava/lang/String; = "rc"

.field public static final RETURN_CODE_VALUES:[Ljava/lang/String;

.field public static final SENDER:Ljava/lang/String; = "s"

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "srv"

.field public static final SMS_FIELD_SEPARATOR:Ljava/lang/String; = ";"

.field public static final SMS_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field public static final SMS_PREFIX_SEPARATOR:Ljava/lang/String; = ":"

.field public static final SMTP_PASSWORD:Ljava/lang/String; = "smtp_pw"

.field public static final SMTP_PORT:Ljava/lang/String; = "spt"

.field public static final SMTP_USER_NAME:Ljava/lang/String; = "smtp_u"

.field public static final STATUS_REQUEST:Ljava/lang/String; = "Status"

.field public static final STATUS_SMS_PREFIX:Ljava/lang/String; = "STATUS"

.field public static final SUBSCRIBER_BLOCKED:Ljava/lang/String; = "B"

.field public static final SUBSCRIBER_ERROR:Ljava/lang/String; = "2"

.field public static final SUBSCRIBER_NEW:Ljava/lang/String; = "N"

.field public static final SUBSCRIBER_PROVISIONED:Ljava/lang/String; = "P"

.field public static final SUBSCRIBER_READY:Ljava/lang/String; = "R"

.field public static final SUBSCRIBER_UNKNOWN:Ljava/lang/String; = "U"

.field public static final SUBSCRIPTION_URL:Ljava/lang/String; = "rs"

.field public static final SUCCESS:Ljava/lang/String; = "0"

.field public static final SYNC_SMS_PREFIX:Ljava/lang/String; = "SYNC"

.field public static final SYNC_TRIGGER_EVENT:Ljava/lang/String; = "ev"

.field public static final SYNC_TRIGGER_EVENT_VALUES:[Ljava/lang/String;

.field public static final SYSTEM_ERROR:Ljava/lang/String; = "1"

.field public static final TIME:Ljava/lang/String; = "dt"

.field public static final TUI_ACCESS_NUMBER:Ljava/lang/String; = "tui"

.field public static final TUI_PASSWORD_LENGTH:Ljava/lang/String; = "pw_len"

.field public static final VIDEO:Ljava/lang/String; = "o"

.field public static final VOICE:Ljava/lang/String; = "v"

.field public static final VVM_CLIENT_UKNOWN:Ljava/lang/String; = "6"

.field public static final VVM_MAILBOX_NOT_INITIALIZED:Ljava/lang/String; = "7"

.field public static final VVM_NOT_ACTIVATED:Ljava/lang/String; = "4"

.field public static final VVM_NOT_PROVISIONED:Ljava/lang/String; = "5"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "NM"

    const-string v1, "MBU"

    const-string v2, "GU"

    .line 89
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/OmtpConstants;->SYNC_TRIGGER_EVENT_VALUES:[Ljava/lang/String;

    const-string/jumbo v0, "v"

    const-string v1, "o"

    const-string v2, "f"

    const-string v3, "i"

    const-string v4, "e"

    .line 107
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/OmtpConstants;->CONTENT_TYPE_VALUES:[Ljava/lang/String;

    const-string v0, "N"

    const-string v1, "R"

    const-string v2, "P"

    const-string v3, "U"

    const-string v4, "B"

    .line 151
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/OmtpConstants;->PROVISIONING_STATUS_VALUES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    .line 170
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/OmtpConstants;->RETURN_CODE_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientType()Ljava/lang/String;
    .locals 8

    .line 238
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/16 v1, 0x3d

    const/16 v2, 0x5f

    .line 241
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3b

    .line 242
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    .line 243
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x20

    .line 244
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xc

    .line 239
    invoke-static {v0, v6}, Lcom/android/voicemail/impl/OmtpConstants;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 247
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 251
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    .line 248
    invoke-static {v6, v7}, Lcom/android/voicemail/impl/OmtpConstants;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 257
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 260
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 258
    invoke-static {v1, v2}, Lcom/android/voicemail/impl/OmtpConstants;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    const-string v0, "%s.%s.%s"

    .line 266
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
