.class public final enum Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;
.super Ljava/lang/Enum;
.source "StandaloneMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/StandaloneMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum DELIVERED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum DELIVERED_MMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum DELIVERED_SMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum DISPLAYED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum FAILED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum RECEIVED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum SEND:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field public static final enum SENDING:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 29
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "SENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->SENDING:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 33
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "SEND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->SEND:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 37
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "DELIVERED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DELIVERED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 42
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "DISPLAYED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DISPLAYED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 46
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->FAILED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 56
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "DISPLAY_REPORT_REQUESTED"

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 61
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "RECEIVED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->RECEIVED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 66
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "REJECTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->REJECTED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 71
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "DELIVERED_SMS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DELIVERED_SMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 76
    new-instance v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    const-string v1, "DELIVERED_MMS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DELIVERED_MMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    new-array v1, v12, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 23
    sget-object v12, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->SENDING:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v12, v1, v2

    sget-object v12, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->SEND:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v12, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DELIVERED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DISPLAYED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->FAILED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v6

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v7

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->RECEIVED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v8

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->REJECTED:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v9

    sget-object v3, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->DELIVERED_SMS:Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    aput-object v3, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->$VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->mValueToEnum:Landroid/util/SparseArray;

    .line 86
    invoke-static {}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->values()[Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    sget-object v4, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->toInt()I

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->mValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;
    .locals 3

    .line 107
    sget-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;
    .locals 1

    .line 23
    const-class v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;
    .locals 1

    .line 23
    sget-object v0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->$VALUES:[Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->mValue:I

    return v0
.end method
