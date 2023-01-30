.class public final enum Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;
.super Ljava/lang/Enum;
.source "StandaloneMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/StandaloneMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum FAILED_DELIVERY:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum FAILED_DISPLAY:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum FAILED_INTERWORKING:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum FALLBACK_SMSMMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum INTERRUPTED_BY_NETWORK:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 124
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 128
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "ABORTED_BY_SYSTEM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 133
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "REJECTED_BY_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 138
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "REJECTED_SPAM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 142
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "REJECTED_MAX_SIZE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 147
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "REJECTED_BY_USER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 152
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "INTERRUPTED_BY_NETWORK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->INTERRUPTED_BY_NETWORK:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 157
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "FAILED_DELIVERY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 162
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "FAILED_DISPLAY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 163
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "FAILED_INTERWORKING"

    const/16 v11, 0x9

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FAILED_INTERWORKING:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 165
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const-string v1, "FALLBACK_SMSMMS"

    invoke-direct {v0, v1, v12, v11}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FALLBACK_SMSMMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 119
    sget-object v13, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v13, v1, v2

    sget-object v13, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v13, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v6

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v7

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->INTERRUPTED_BY_NETWORK:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v8

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v9

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v10

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->FAILED_INTERWORKING:Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    aput-object v3, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 172
    invoke-static {}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->values()[Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 173
    sget-object v4, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->toInt()I

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

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;
    .locals 3

    .line 197
    sget-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    if-eqz v0, :cond_0

    return-object v0

    .line 201
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;
    .locals 1

    .line 119
    const-class v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;
    .locals 1

    .line 119
    sget-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->mValue:I

    return v0
.end method
