.class public final enum Lcom/gsma/services/rcs/upload/FileUpload$State;
.super Ljava/lang/Enum;
.source "FileUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/FileUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/upload/FileUpload$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/upload/FileUpload$State;

.field public static final enum ABORTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field public static final enum FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field public static final enum INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field public static final enum STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field public static final enum TRANSFERRED:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/upload/FileUpload$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    const-string v1, "INITIATING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/upload/FileUpload$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 50
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/upload/FileUpload$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 55
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    const-string v1, "ABORTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/upload/FileUpload$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->ABORTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 60
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/upload/FileUpload$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 65
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    const-string v1, "TRANSFERRED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/upload/FileUpload$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->TRANSFERRED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 40
    sget-object v7, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    aput-object v7, v1, v2

    sget-object v7, Lcom/gsma/services/rcs/upload/FileUpload$State;->STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    aput-object v7, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/upload/FileUpload$State;->ABORTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/upload/FileUpload$State;->FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    aput-object v3, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/gsma/services/rcs/upload/FileUpload$State;->$VALUES:[Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->mValueToEnum:Landroid/util/SparseArray;

    .line 71
    invoke-static {}, Lcom/gsma/services/rcs/upload/FileUpload$State;->values()[Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 72
    sget-object v4, Lcom/gsma/services/rcs/upload/FileUpload$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/upload/FileUpload$State;->toInt()I

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

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/gsma/services/rcs/upload/FileUpload$State;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 3

    .line 96
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/upload/FileUpload$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 1

    .line 40
    const-class v0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/upload/FileUpload$State;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 1

    .line 40
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->$VALUES:[Lcom/gsma/services/rcs/upload/FileUpload$State;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/upload/FileUpload$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/upload/FileUpload$State;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/gsma/services/rcs/upload/FileUpload$State;->mValue:I

    return v0
.end method
