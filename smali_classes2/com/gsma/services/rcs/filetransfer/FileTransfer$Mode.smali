.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;
.super Ljava/lang/Enum;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

.field public static final enum GROUP:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

.field public static final enum MMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

.field public static final enum MULTIPLE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 432
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    const-string v1, "MMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->MMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    .line 437
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    const-string v1, "MULTIPLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->MULTIPLE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    .line 442
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    const-string v1, "GROUP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->GROUP:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    .line 427
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->MMS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    aput-object v5, v1, v2

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->MULTIPLE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->mValueToEnum:Landroid/util/SparseArray;

    .line 448
    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 449
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->toInt()I

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

    .line 453
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 454
    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;
    .locals 3

    .line 473
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    if-eqz v0, :cond_0

    return-object v0

    .line 477
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;
    .locals 1

    .line 427
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;
    .locals 1

    .line 427
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Mode;->mValue:I

    return v0
.end method
