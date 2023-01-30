.class public final enum Lcom/android/dialer/logging/InteractionEvent$Type;
.super Ljava/lang/Enum;
.source "InteractionEvent.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/InteractionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/logging/InteractionEvent$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final enum BLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final BLOCK_NUMBER_CALL_DETAIL_VALUE:I = 0x11

.field public static final enum BLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final BLOCK_NUMBER_CALL_LOG_VALUE:I = 0x10

.field public static final enum BLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final BLOCK_NUMBER_MANAGEMENT_SCREEN_VALUE:I = 0x12

.field public static final enum CALL_BLOCKED:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final CALL_BLOCKED_VALUE:I = 0xf

.field public static final enum IMPORT_SEND_TO_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final IMPORT_SEND_TO_VOICEMAIL_VALUE:I = 0x16

.field public static final enum OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL_VALUE:I = 0x20

.field public static final enum OPEN_QUICK_CONTACT_FROM_CALL_DETAILS:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_CALL_DETAILS_VALUE:I = 0x1f

.field public static final enum OPEN_QUICK_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_CALL_HISTORY_VALUE:I = 0x25

.field public static final enum OPEN_QUICK_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_CALL_LOG_VALUE:I = 0x1e

.field public static final enum OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE_VALUE:I = 0x21

.field public static final enum OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM_VALUE:I = 0x22

.field public static final enum OPEN_QUICK_CONTACT_FROM_SEARCH:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_SEARCH_VALUE:I = 0x23

.field public static final enum OPEN_QUICK_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final OPEN_QUICK_CONTACT_FROM_VOICEMAIL_VALUE:I = 0x24

.field public static final enum SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER_VALUE:I = 0x1c

.field public static final enum SPEED_DIAL_OPEN_CONTACT_CARD:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final SPEED_DIAL_OPEN_CONTACT_CARD_VALUE:I = 0x1b

.field public static final enum SPEED_DIAL_PIN_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final SPEED_DIAL_PIN_CONTACT_VALUE:I = 0x19

.field public static final enum SPEED_DIAL_REMOVE_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final SPEED_DIAL_REMOVE_CONTACT_VALUE:I = 0x1a

.field public static final enum SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT_VALUE:I = 0x1d

.field public static final enum UNBLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final UNBLOCK_NUMBER_CALL_DETAIL_VALUE:I = 0x14

.field public static final enum UNBLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final UNBLOCK_NUMBER_CALL_LOG_VALUE:I = 0x13

.field public static final enum UNBLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final UNBLOCK_NUMBER_MANAGEMENT_SCREEN_VALUE:I = 0x15

.field public static final enum UNDO_BLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final UNDO_BLOCK_NUMBER_VALUE:I = 0x17

.field public static final enum UNDO_UNBLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final UNDO_UNBLOCK_NUMBER_VALUE:I = 0x18

.field public static final enum UNKNOWN:Lcom/android/dialer/logging/InteractionEvent$Type;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/dialer/logging/InteractionEvent$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNKNOWN:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 36
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "CALL_BLOCKED"

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-direct {v0, v1, v3, v4}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->CALL_BLOCKED:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 44
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "BLOCK_NUMBER_CALL_LOG"

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-direct {v0, v1, v5, v6}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 52
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "BLOCK_NUMBER_CALL_DETAIL"

    const/4 v7, 0x3

    const/16 v8, 0x11

    invoke-direct {v0, v1, v7, v8}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 60
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "BLOCK_NUMBER_MANAGEMENT_SCREEN"

    const/4 v9, 0x4

    const/16 v10, 0x12

    invoke-direct {v0, v1, v9, v10}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 68
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "UNBLOCK_NUMBER_CALL_LOG"

    const/4 v11, 0x5

    const/16 v12, 0x13

    invoke-direct {v0, v1, v11, v12}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 76
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "UNBLOCK_NUMBER_CALL_DETAIL"

    const/4 v13, 0x6

    const/16 v14, 0x14

    invoke-direct {v0, v1, v13, v14}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 84
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "UNBLOCK_NUMBER_MANAGEMENT_SCREEN"

    const/4 v15, 0x7

    const/16 v13, 0x15

    invoke-direct {v0, v1, v15, v13}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 92
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "IMPORT_SEND_TO_VOICEMAIL"

    const/16 v15, 0x8

    const/16 v11, 0x16

    invoke-direct {v0, v1, v15, v11}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->IMPORT_SEND_TO_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 100
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "UNDO_BLOCK_NUMBER"

    const/16 v15, 0x9

    const/16 v9, 0x17

    invoke-direct {v0, v1, v15, v9}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_BLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 108
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "UNDO_UNBLOCK_NUMBER"

    const/16 v15, 0xa

    const/16 v7, 0x18

    invoke-direct {v0, v1, v15, v7}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_UNBLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 116
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "SPEED_DIAL_PIN_CONTACT"

    const/16 v15, 0xb

    const/16 v5, 0x19

    invoke-direct {v0, v1, v15, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_PIN_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 120
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "SPEED_DIAL_REMOVE_CONTACT"

    const/16 v5, 0xc

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v5, v15}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_REMOVE_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 124
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "SPEED_DIAL_OPEN_CONTACT_CARD"

    const/16 v5, 0xd

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v5, v15}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_OPEN_CONTACT_CARD:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 128
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER"

    const/16 v5, 0xe

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v5, v15}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 132
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT"

    const/16 v5, 0x1d

    invoke-direct {v0, v1, v4, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 140
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_CALL_LOG"

    const/16 v5, 0x1e

    invoke-direct {v0, v1, v6, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 144
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_CALL_DETAILS"

    const/16 v5, 0x1f

    invoke-direct {v0, v1, v8, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_DETAILS:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 148
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL"

    const/16 v5, 0x20

    invoke-direct {v0, v1, v10, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 152
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE"

    const/16 v5, 0x21

    invoke-direct {v0, v1, v12, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 156
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM"

    const/16 v5, 0x22

    invoke-direct {v0, v1, v14, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 160
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_SEARCH"

    const/16 v5, 0x23

    invoke-direct {v0, v1, v13, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_SEARCH:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 164
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_VOICEMAIL"

    const/16 v5, 0x24

    invoke-direct {v0, v1, v11, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 168
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    const-string v1, "OPEN_QUICK_CONTACT_FROM_CALL_HISTORY"

    const/16 v5, 0x25

    invoke-direct {v0, v1, v9, v5}, Lcom/android/dialer/logging/InteractionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/InteractionEvent$Type;

    new-array v1, v7, [Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 23
    sget-object v5, Lcom/android/dialer/logging/InteractionEvent$Type;->UNKNOWN:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->CALL_BLOCKED:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->IMPORT_SEND_TO_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_BLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_UNBLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_PIN_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_REMOVE_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_OPEN_CONTACT_CARD:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_DETAILS:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_SEARCH:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    aput-object v2, v1, v11

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->$VALUES:[Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 365
    new-instance v0, Lcom/android/dialer/logging/InteractionEvent$Type$1;

    invoke-direct {v0}, Lcom/android/dialer/logging/InteractionEvent$Type$1;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 376
    iput p3, p0, Lcom/android/dialer/logging/InteractionEvent$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/dialer/logging/InteractionEvent$Type;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 355
    :pswitch_0
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 354
    :pswitch_1
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 353
    :pswitch_2
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_SEARCH:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 352
    :pswitch_3
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_ITEM:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 351
    :pswitch_4
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CONTACTS_FRAGMENT_BADGE:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 350
    :pswitch_5
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_ALL_CONTACTS_GENERAL:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 349
    :pswitch_6
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_DETAILS:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 348
    :pswitch_7
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 347
    :pswitch_8
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_SET_DEFAULT_NUMBER_FOR_AMBIGUOUS_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 346
    :pswitch_9
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 345
    :pswitch_a
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_OPEN_CONTACT_CARD:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 344
    :pswitch_b
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_REMOVE_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 343
    :pswitch_c
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_PIN_CONTACT:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 342
    :pswitch_d
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_UNBLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 341
    :pswitch_e
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNDO_BLOCK_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 340
    :pswitch_f
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->IMPORT_SEND_TO_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 339
    :pswitch_10
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 338
    :pswitch_11
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 337
    :pswitch_12
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNBLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 336
    :pswitch_13
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_MANAGEMENT_SCREEN:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 335
    :pswitch_14
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_CALL_DETAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 334
    :pswitch_15
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->BLOCK_NUMBER_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 333
    :pswitch_16
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->CALL_BLOCKED:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    .line 332
    :cond_0
    sget-object p0, Lcom/android/dialer/logging/InteractionEvent$Type;->UNKNOWN:Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
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
            "Lcom/android/dialer/logging/InteractionEvent$Type;",
            ">;"
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/dialer/logging/InteractionEvent$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    invoke-static {p0}, Lcom/android/dialer/logging/InteractionEvent$Type;->forNumber(I)Lcom/android/dialer/logging/InteractionEvent$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/logging/InteractionEvent$Type;
    .locals 1

    .line 23
    const-class v0, Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/logging/InteractionEvent$Type;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->$VALUES:[Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-virtual {v0}, [Lcom/android/dialer/logging/InteractionEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/logging/InteractionEvent$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/dialer/logging/InteractionEvent$Type;->value:I

    return v0
.end method
