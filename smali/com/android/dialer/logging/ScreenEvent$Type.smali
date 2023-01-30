.class public final enum Lcom/android/dialer/logging/ScreenEvent$Type;
.super Ljava/lang/Enum;
.source "ScreenEvent.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/ScreenEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/ScreenEvent$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final enum ALL_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final ALL_CONTACTS_VALUE:I = 0x5

.field public static final enum BLOCKED_NUMBER_ADD_NUMBER:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final BLOCKED_NUMBER_ADD_NUMBER_VALUE:I = 0x13

.field public static final enum BLOCKED_NUMBER_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final BLOCKED_NUMBER_MANAGEMENT_VALUE:I = 0x12

.field public static final enum CALL_DETAILS:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final CALL_DETAILS_VALUE:I = 0x14

.field public static final enum CALL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final enum CALL_LOG_CONTEXT_MENU:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final CALL_LOG_CONTEXT_MENU_VALUE:I = 0x11

.field public static final enum CALL_LOG_FILTER:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final CALL_LOG_FILTER_VALUE:I = 0x8

.field public static final CALL_LOG_VALUE:I = 0x3

.field public static final enum CLEAR_FREQUENTS:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final CLEAR_FREQUENTS_VALUE:I = 0xb

.field public static final enum CONFERENCE_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final CONFERENCE_MANAGEMENT_VALUE:I = 0xf

.field public static final enum DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final DIALPAD_VALUE:I = 0x1

.field public static final enum IMPORT_EXPORT_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final IMPORT_EXPORT_CONTACTS_VALUE:I = 0xa

.field public static final enum INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final enum INCALL_DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final INCALL_DIALPAD_VALUE:I = 0x10

.field public static final INCALL_VALUE:I = 0xd

.field public static final enum INCOMING_CALL:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final INCOMING_CALL_VALUE:I = 0xe

.field public static final enum REGULAR_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final REGULAR_SEARCH_VALUE:I = 0x6

.field public static final enum SEND_FEEDBACK:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final SEND_FEEDBACK_VALUE:I = 0xc

.field public static final enum SETTINGS:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final SETTINGS_VALUE:I = 0x9

.field public static final enum SMART_DIAL_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final SMART_DIAL_SEARCH_VALUE:I = 0x7

.field public static final enum SPEED_DIAL:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final SPEED_DIAL_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum VOICEMAIL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

.field public static final VOICEMAIL_LOG_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/ScreenEvent$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 24
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->UNKNOWN:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 28
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "DIALPAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 32
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "SPEED_DIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->SPEED_DIAL:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 36
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "CALL_LOG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 44
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "VOICEMAIL_LOG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->VOICEMAIL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 52
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "ALL_CONTACTS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->ALL_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 60
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "REGULAR_SEARCH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->REGULAR_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 68
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "SMART_DIAL_SEARCH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->SMART_DIAL_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 72
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "CALL_LOG_FILTER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_FILTER:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 76
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "SETTINGS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->SETTINGS:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 84
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "IMPORT_EXPORT_CONTACTS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->IMPORT_EXPORT_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 92
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "CLEAR_FREQUENTS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CLEAR_FREQUENTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 100
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "SEND_FEEDBACK"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->SEND_FEEDBACK:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 108
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "INCALL"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 117
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "INCOMING_CALL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCOMING_CALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 126
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "CONFERENCE_MANAGEMENT"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CONFERENCE_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 134
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "INCALL_DIALPAD"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL_DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 142
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "CALL_LOG_CONTEXT_MENU"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_CONTEXT_MENU:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 151
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "BLOCKED_NUMBER_MANAGEMENT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 159
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "BLOCKED_NUMBER_ADD_NUMBER"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_ADD_NUMBER:Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 163
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    const-string v1, "CALL_DETAILS"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/android/dialer/logging/ScreenEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_DETAILS:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 19
    sget-object v16, Lcom/android/dialer/logging/ScreenEvent$Type;->UNKNOWN:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->SPEED_DIAL:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->VOICEMAIL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->ALL_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->REGULAR_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->SMART_DIAL_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_FILTER:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->SETTINGS:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->IMPORT_EXPORT_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->CLEAR_FREQUENTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->SEND_FEEDBACK:Lcom/android/dialer/logging/ScreenEvent$Type;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->INCOMING_CALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->CONFERENCE_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL_DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_CONTEXT_MENU:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_ADD_NUMBER:Lcom/android/dialer/logging/ScreenEvent$Type;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/dialer/logging/ScreenEvent$Type;->$VALUES:[Lcom/android/dialer/logging/ScreenEvent$Type;

    .line 356
    new-instance v0, Lcom/android/dialer/logging/ScreenEvent$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/ScreenEvent$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    iput p3, p0, Lcom/android/dialer/logging/ScreenEvent$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/ScreenEvent$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 346
    :pswitch_0
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_DETAILS:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 345
    :pswitch_1
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_ADD_NUMBER:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 344
    :pswitch_2
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 343
    :pswitch_3
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_CONTEXT_MENU:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 342
    :pswitch_4
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL_DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 341
    :pswitch_5
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->CONFERENCE_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 340
    :pswitch_6
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCOMING_CALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 339
    :pswitch_7
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 338
    :pswitch_8
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->SEND_FEEDBACK:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 337
    :pswitch_9
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->CLEAR_FREQUENTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 336
    :pswitch_a
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->IMPORT_EXPORT_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 335
    :pswitch_b
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->SETTINGS:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 334
    :pswitch_c
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG_FILTER:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 333
    :pswitch_d
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->SMART_DIAL_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 332
    :pswitch_e
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->REGULAR_SEARCH:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 331
    :pswitch_f
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->ALL_CONTACTS:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 330
    :pswitch_10
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->VOICEMAIL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 329
    :pswitch_11
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->CALL_LOG:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 328
    :pswitch_12
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->SPEED_DIAL:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 327
    :pswitch_13
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    .line 326
    :pswitch_14
    sget-object p0, Lcom/android/dialer/logging/ScreenEvent$Type;->UNKNOWN:Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
            "Lcom/android/dialer/logging/ScreenEvent$Type;",
            ">;"
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/ScreenEvent$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-static {p0}, Lcom/android/dialer/logging/ScreenEvent$Type;->forNumber(I)Lcom/android/dialer/logging/ScreenEvent$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/ScreenEvent$Type;
    .locals 1

    .line 19
    const-class v0, Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/ScreenEvent$Type;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->$VALUES:[Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/ScreenEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/ScreenEvent$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/android/dialer/logging/ScreenEvent$Type;->value:I

    return v0
.end method
