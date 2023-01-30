.class public final enum Lcom/gsma/services/rcs/RcsService$RealTimeOperate;
.super Ljava/lang/Enum;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealTimeOperate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/RcsService$RealTimeOperate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

.field public static final enum REAL_ALLOW:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

.field public static final enum REAL_FORBID:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

.field public static final enum REAL_TIMEOUT:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/RcsService$RealTimeOperate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 459
    new-instance v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    const-string v1, "REAL_ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->REAL_ALLOW:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    .line 463
    new-instance v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    const-string v1, "REAL_FORBID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->REAL_FORBID:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    .line 467
    new-instance v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    const-string v1, "REAL_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->REAL_TIMEOUT:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    .line 454
    sget-object v5, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->REAL_ALLOW:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    aput-object v5, v1, v2

    sget-object v5, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->REAL_FORBID:Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->$VALUES:[Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    .line 471
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->mValueToEnum:Landroid/util/SparseArray;

    .line 474
    invoke-static {}, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->values()[Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 475
    sget-object v4, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->toInt()I

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

    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 480
    iput p3, p0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/RcsService$RealTimeOperate;
    .locals 3

    .line 488
    sget-object v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    if-eqz v0, :cond_0

    return-object v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/RcsService$RealTimeOperate;
    .locals 1

    .line 454
    const-class v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/RcsService$RealTimeOperate;
    .locals 1

    .line 454
    sget-object v0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->$VALUES:[Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/RcsService$RealTimeOperate;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/gsma/services/rcs/RcsService$RealTimeOperate;->mValue:I

    return v0
.end method
