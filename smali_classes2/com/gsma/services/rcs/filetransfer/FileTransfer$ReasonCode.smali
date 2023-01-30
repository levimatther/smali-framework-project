.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
.super Ljava/lang/Enum;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_FALLBACK_MMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_FALLBACK_SMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_FILE_EXPIRATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_FILE_NO_LONGER_AVAILABLE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_NO_INTERNET:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum INTERRUPTED_BY_NETWORK:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_HTTP403:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_DEFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum WARNING_SOMETHING_WENT_WRONG:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 235
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 240
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "ABORTED_BY_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 245
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "ABORTED_BY_REMOTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 250
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "ABORTED_BY_SYSTEM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 255
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_BY_SECONDARY_DEVICE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 260
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_BY_TIMEOUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 265
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_SPAM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 271
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_LOW_SPACE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 276
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_MAX_SIZE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 281
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_MAX_FILE_TRANSFERS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 286
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_BY_USER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 291
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_BY_REMOTE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 296
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_MEDIA_FAILED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 301
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_BY_SYSTEM"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 306
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "PAUSED_BY_SYSTEM"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 311
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "PAUSED_BY_USER"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 316
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_INITIATION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 321
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_DATA_TRANSFER"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 326
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_SAVING"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 331
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_DELIVERY"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 336
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_DISPLAY"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 341
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_NOT_ALLOWED_TO_SEND"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 347
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "INTERRUPTED_BY_NETWORK"

    const/16 v15, 0x16

    const/16 v14, 0x16

    invoke-direct {v0, v1, v15, v14}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->INTERRUPTED_BY_NETWORK:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 353
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "REJECTED_BY_DEFERRED"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_DEFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 358
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_FALLBACK_MMS"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FALLBACK_MMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 365
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "PAUSED_BY_HTTP403"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_HTTP403:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 369
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_FILE_NO_LONGER_AVAILABLE"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FILE_NO_LONGER_AVAILABLE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 373
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_FALLBACK_SMS"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FALLBACK_SMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 376
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_NO_INTERNET"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NO_INTERNET:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 379
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "WARNING_SOMETHING_WENT_WRONG"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->WARNING_SOMETHING_WENT_WRONG:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 382
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v1, "FAILED_FILE_EXPIRATION"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FILE_EXPIRATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v1, 0x1f

    new-array v1, v1, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 231
    sget-object v14, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v14, v1, v2

    sget-object v14, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v14, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v6

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v7

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v8

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v9

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v10

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v11

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v12

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v1, v13

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->INTERRUPTED_BY_NETWORK:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x16

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_DEFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x17

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FALLBACK_MMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x18

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_HTTP403:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x19

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FILE_NO_LONGER_AVAILABLE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_FALLBACK_SMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NO_INTERNET:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->WARNING_SOMETHING_WENT_WRONG:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    const/16 v3, 0x1e

    aput-object v0, v1, v3

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 387
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 389
    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 390
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 395
    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 3

    .line 414
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    if-eqz v0, :cond_0

    return-object v0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 1

    .line 231
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 1

    .line 231
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValue:I

    return v0
.end method
