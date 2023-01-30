.class public final enum Lcom/android/dialer/callintent/CallInitiationType$Type;
.super Ljava/lang/Enum;
.source "CallInitiationType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/callintent/CallInitiationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/callintent/CallInitiationType$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final enum CALL_COMPOSER:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final CALL_COMPOSER_VALUE:I = 0xe

.field public static final enum CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final CALL_DETAILS_VALUE:I = 0xa

.field public static final enum CALL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final enum CALL_LOG_FILTER:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final CALL_LOG_FILTER_VALUE:I = 0x8

.field public static final CALL_LOG_VALUE:I = 0x7

.field public static final enum CALL_SUBJECT_DIALOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final CALL_SUBJECT_DIALOG_VALUE:I = 0x10

.field public static final enum DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final DIALPAD_VALUE:I = 0x2

.field public static final enum EXTERNAL_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final EXTERNAL_INITIATION_VALUE:I = 0xc

.field public static final enum IMS_VIDEO_BLOCKED_FALLBACK_TO_VOICE:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final IMS_VIDEO_BLOCKED_FALLBACK_TO_VOICE_VALUE:I = 0x11

.field public static final enum INCOMING_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final INCOMING_INITIATION_VALUE:I = 0x1

.field public static final enum LAUNCHER_SHORTCUT:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final LAUNCHER_SHORTCUT_VALUE:I = 0xd

.field public static final enum MISSED_CALL_NOTIFICATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final MISSED_CALL_NOTIFICATION_VALUE:I = 0xf

.field public static final enum QUICK_CONTACTS:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final QUICK_CONTACTS_VALUE:I = 0xb

.field public static final enum REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final REGULAR_SEARCH_VALUE:I = 0x6

.field public static final enum REMOTE_DIRECTORY:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final REMOTE_DIRECTORY_VALUE:I = 0x4

.field public static final enum SMART_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final SMART_DIAL_VALUE:I = 0x5

.field public static final enum SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final SPEED_DIAL_VALUE:I = 0x3

.field public static final enum UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final UNKNOWN_INITIATION_VALUE:I = 0x0

.field public static final enum VOICEMAIL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

.field public static final VOICEMAIL_LOG_VALUE:I = 0x9

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/callintent/CallInitiationType$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 32
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "UNKNOWN_INITIATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 40
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "INCOMING_INITIATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->INCOMING_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 44
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "DIALPAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 48
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "SPEED_DIAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 52
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "REMOTE_DIRECTORY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->REMOTE_DIRECTORY:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 60
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "SMART_DIAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->SMART_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 68
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "REGULAR_SEARCH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 77
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "CALL_LOG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 86
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "CALL_LOG_FILTER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG_FILTER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 94
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "VOICEMAIL_LOG"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->VOICEMAIL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 102
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "CALL_DETAILS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 110
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "QUICK_CONTACTS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->QUICK_CONTACTS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 119
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "EXTERNAL_INITIATION"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->EXTERNAL_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 123
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "LAUNCHER_SHORTCUT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->LAUNCHER_SHORTCUT:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 127
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "CALL_COMPOSER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_COMPOSER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 131
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "MISSED_CALL_NOTIFICATION"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->MISSED_CALL_NOTIFICATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 135
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "CALL_SUBJECT_DIALOG"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_SUBJECT_DIALOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 139
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    const-string v1, "IMS_VIDEO_BLOCKED_FALLBACK_TO_VOICE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/callintent/CallInitiationType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->IMS_VIDEO_BLOCKED_FALLBACK_TO_VOICE:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 23
    sget-object v16, Lcom/android/dialer/callintent/CallInitiationType$Type;->UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->INCOMING_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->REMOTE_DIRECTORY:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->SMART_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG_FILTER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->VOICEMAIL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->QUICK_CONTACTS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->EXTERNAL_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->LAUNCHER_SHORTCUT:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_COMPOSER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->MISSED_CALL_NOTIFICATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_SUBJECT_DIALOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->$VALUES:[Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 301
    new-instance v0, Lcom/android/dialer/callintent/CallInitiationType$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/callintent/CallInitiationType$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput p3, p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 291
    :pswitch_0
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->IMS_VIDEO_BLOCKED_FALLBACK_TO_VOICE:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 290
    :pswitch_1
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_SUBJECT_DIALOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 289
    :pswitch_2
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->MISSED_CALL_NOTIFICATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 288
    :pswitch_3
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_COMPOSER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 287
    :pswitch_4
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->LAUNCHER_SHORTCUT:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 286
    :pswitch_5
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->EXTERNAL_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 285
    :pswitch_6
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->QUICK_CONTACTS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 284
    :pswitch_7
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 283
    :pswitch_8
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->VOICEMAIL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 282
    :pswitch_9
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG_FILTER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 281
    :pswitch_a
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 280
    :pswitch_b
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 279
    :pswitch_c
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->SMART_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 278
    :pswitch_d
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->REMOTE_DIRECTORY:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 277
    :pswitch_e
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 276
    :pswitch_f
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 275
    :pswitch_10
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->INCOMING_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    .line 274
    :pswitch_11
    sget-object p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
            "Lcom/android/dialer/callintent/CallInitiationType$Type;",
            ">;"
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    invoke-static {p0}, Lcom/android/dialer/callintent/CallInitiationType$Type;->forNumber(I)Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 1

    .line 23
    const-class v0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->$VALUES:[Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/callintent/CallInitiationType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/android/dialer/callintent/CallInitiationType$Type;->value:I

    return v0
.end method
