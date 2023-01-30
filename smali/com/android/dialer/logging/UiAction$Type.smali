.class public final enum Lcom/android/dialer/logging/UiAction$Type;
.super Ljava/lang/Enum;
.source "UiAction.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/UiAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/UiAction$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/UiAction$Type;

.field public static final enum CHANGE_TAB_TO_CALL_LOG:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CHANGE_TAB_TO_CALL_LOG_VALUE:I = 0x2

.field public static final enum CHANGE_TAB_TO_CONTACTS:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CHANGE_TAB_TO_CONTACTS_VALUE:I = 0x3

.field public static final enum CHANGE_TAB_TO_FAVORITE:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CHANGE_TAB_TO_FAVORITE_VALUE:I = 0x1

.field public static final enum CHANGE_TAB_TO_VOICEMAIL:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CHANGE_TAB_TO_VOICEMAIL_VALUE:I = 0x4

.field public static final enum CLICK_CALL_LOG_ITEM:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CLICK_CALL_LOG_ITEM_VALUE:I = 0x64

.field public static final enum CLOSE_CALL_DETAIL_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CLOSE_CALL_DETAIL_WITH_CANCEL_BUTTON_VALUE:I = 0x66

.field public static final enum CLOSE_CALL_HISTORY_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CLOSE_CALL_HISTORY_WITH_CANCEL_BUTTON_VALUE:I = 0x191

.field public static final enum CLOSE_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CLOSE_DIALPAD_VALUE:I = 0xc9

.field public static final enum CLOSE_SEARCH_WITH_HIDE_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

.field public static final CLOSE_SEARCH_WITH_HIDE_BUTTON_VALUE:I = 0x12e

.field public static final enum COPY_NUMBER_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

.field public static final COPY_NUMBER_IN_CALL_DETAIL_VALUE:I = 0x67

.field public static final enum EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

.field public static final EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL_VALUE:I = 0x68

.field public static final enum HIDE_KEYBOARD_IN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

.field public static final HIDE_KEYBOARD_IN_SEARCH_VALUE:I = 0x12d

.field public static final enum OPEN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

.field public static final OPEN_CALL_DETAIL_VALUE:I = 0x65

.field public static final enum OPEN_CALL_HISTORY:Lcom/android/dialer/logging/UiAction$Type;

.field public static final OPEN_CALL_HISTORY_VALUE:I = 0x190

.field public static final enum OPEN_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

.field public static final OPEN_DIALPAD_VALUE:I = 0xc8

.field public static final enum OPEN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

.field public static final OPEN_SEARCH_VALUE:I = 0x12c

.field public static final enum PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

.field public static final PRESS_ANDROID_BACK_BUTTON_VALUE:I = 0x5

.field public static final enum PRESS_CALL_BUTTON_WITHOUT_CALLING:Lcom/android/dialer/logging/UiAction$Type;

.field public static final PRESS_CALL_BUTTON_WITHOUT_CALLING_VALUE:I = 0xca

.field public static final enum SCROLL:Lcom/android/dialer/logging/UiAction$Type;

.field public static final SCROLL_VALUE:I = 0x7

.field public static final enum TEXT_CHANGE_WITH_INPUT:Lcom/android/dialer/logging/UiAction$Type;

.field public static final TEXT_CHANGE_WITH_INPUT_VALUE:I = 0x6

.field public static final enum UNKNOWN:Lcom/android/dialer/logging/UiAction$Type;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->UNKNOWN:Lcom/android/dialer/logging/UiAction$Type;

    .line 32
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CHANGE_TAB_TO_FAVORITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_FAVORITE:Lcom/android/dialer/logging/UiAction$Type;

    .line 36
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CHANGE_TAB_TO_CALL_LOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CALL_LOG:Lcom/android/dialer/logging/UiAction$Type;

    .line 40
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CHANGE_TAB_TO_CONTACTS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CONTACTS:Lcom/android/dialer/logging/UiAction$Type;

    .line 44
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CHANGE_TAB_TO_VOICEMAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_VOICEMAIL:Lcom/android/dialer/logging/UiAction$Type;

    .line 48
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "PRESS_ANDROID_BACK_BUTTON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    .line 52
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "TEXT_CHANGE_WITH_INPUT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->TEXT_CHANGE_WITH_INPUT:Lcom/android/dialer/logging/UiAction$Type;

    .line 56
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "SCROLL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->SCROLL:Lcom/android/dialer/logging/UiAction$Type;

    .line 64
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CLICK_CALL_LOG_ITEM"

    const/16 v10, 0x8

    const/16 v11, 0x64

    invoke-direct {v0, v1, v10, v11}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLICK_CALL_LOG_ITEM:Lcom/android/dialer/logging/UiAction$Type;

    .line 68
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "OPEN_CALL_DETAIL"

    const/16 v11, 0x9

    const/16 v12, 0x65

    invoke-direct {v0, v1, v11, v12}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    .line 72
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CLOSE_CALL_DETAIL_WITH_CANCEL_BUTTON"

    const/16 v12, 0xa

    const/16 v13, 0x66

    invoke-direct {v0, v1, v12, v13}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_CALL_DETAIL_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    .line 76
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "COPY_NUMBER_IN_CALL_DETAIL"

    const/16 v13, 0xb

    const/16 v14, 0x67

    invoke-direct {v0, v1, v13, v14}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->COPY_NUMBER_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    .line 80
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL"

    const/16 v14, 0xc

    const/16 v15, 0x68

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    .line 88
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "OPEN_DIALPAD"

    const/16 v15, 0xd

    const/16 v14, 0xc8

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    .line 92
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CLOSE_DIALPAD"

    const/16 v14, 0xe

    const/16 v15, 0xc9

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    .line 96
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "PRESS_CALL_BUTTON_WITHOUT_CALLING"

    const/16 v15, 0xf

    const/16 v14, 0xca

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_CALL_BUTTON_WITHOUT_CALLING:Lcom/android/dialer/logging/UiAction$Type;

    .line 104
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "OPEN_SEARCH"

    const/16 v14, 0x10

    const/16 v15, 0x12c

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    .line 108
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "HIDE_KEYBOARD_IN_SEARCH"

    const/16 v15, 0x11

    const/16 v14, 0x12d

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->HIDE_KEYBOARD_IN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    .line 112
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CLOSE_SEARCH_WITH_HIDE_BUTTON"

    const/16 v14, 0x12

    const/16 v15, 0x12e

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_SEARCH_WITH_HIDE_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    .line 120
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "OPEN_CALL_HISTORY"

    const/16 v15, 0x13

    const/16 v14, 0x190

    invoke-direct {v0, v1, v15, v14}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_HISTORY:Lcom/android/dialer/logging/UiAction$Type;

    .line 124
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type;

    const-string v1, "CLOSE_CALL_HISTORY_WITH_CANCEL_BUTTON"

    const/16 v14, 0x14

    const/16 v15, 0x191

    invoke-direct {v0, v1, v14, v15}, Lcom/android/dialer/logging/UiAction$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_CALL_HISTORY_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/android/dialer/logging/UiAction$Type;

    .line 19
    sget-object v15, Lcom/android/dialer/logging/UiAction$Type;->UNKNOWN:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_FAVORITE:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CALL_LOG:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CONTACTS:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_VOICEMAIL:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->TEXT_CHANGE_WITH_INPUT:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->SCROLL:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CLICK_CALL_LOG_ITEM:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_CALL_DETAIL_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->COPY_NUMBER_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->OPEN_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->PRESS_CALL_BUTTON_WITHOUT_CALLING:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->OPEN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->HIDE_KEYBOARD_IN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_SEARCH_WITH_HIDE_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_HISTORY:Lcom/android/dialer/logging/UiAction$Type;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/android/dialer/logging/UiAction$Type;->$VALUES:[Lcom/android/dialer/logging/UiAction$Type;

    .line 278
    new-instance v0, Lcom/android/dialer/logging/UiAction$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/UiAction$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/UiAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 289
    iput p3, p0, Lcom/android/dialer/logging/UiAction$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/UiAction$Type;
    .locals 1

    const/16 v0, 0x190

    if-eq p0, v0, :cond_1

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return-object p0

    .line 266
    :pswitch_0
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_SEARCH_WITH_HIDE_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 265
    :pswitch_1
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->HIDE_KEYBOARD_IN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 264
    :pswitch_2
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 263
    :pswitch_3
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_CALL_BUTTON_WITHOUT_CALLING:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 262
    :pswitch_4
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 261
    :pswitch_5
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_DIALPAD:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 260
    :pswitch_6
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 259
    :pswitch_7
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->COPY_NUMBER_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 258
    :pswitch_8
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_CALL_DETAIL_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 257
    :pswitch_9
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 256
    :pswitch_a
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CLICK_CALL_LOG_ITEM:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 255
    :pswitch_b
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->SCROLL:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 254
    :pswitch_c
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->TEXT_CHANGE_WITH_INPUT:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 253
    :pswitch_d
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->PRESS_ANDROID_BACK_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 252
    :pswitch_e
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_VOICEMAIL:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 251
    :pswitch_f
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CONTACTS:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 250
    :pswitch_10
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_CALL_LOG:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 249
    :pswitch_11
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CHANGE_TAB_TO_FAVORITE:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 248
    :pswitch_12
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->UNKNOWN:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 268
    :cond_0
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_CALL_HISTORY_WITH_CANCEL_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    .line 267
    :cond_1
    sget-object p0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_HISTORY:Lcom/android/dialer/logging/UiAction$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12c
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
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/UiAction$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/android/dialer/logging/UiAction$Type;->forNumber(I)Lcom/android/dialer/logging/UiAction$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/UiAction$Type;
    .locals 1

    .line 19
    const-class v0, Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/UiAction$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/UiAction$Type;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->$VALUES:[Lcom/android/dialer/logging/UiAction$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/UiAction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/UiAction$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/dialer/logging/UiAction$Type;->value:I

    return v0
.end method
