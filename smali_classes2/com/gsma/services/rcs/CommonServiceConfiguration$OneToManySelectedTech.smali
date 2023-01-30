.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneToManySelectedTech"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

.field public static final enum ONE_TO_ONE_CHAT:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

.field public static final enum SMS:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

.field public static final enum STANDALONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 632
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->UNSPECIFIED:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 637
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    const-string v1, "SMS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->SMS:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 641
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    const-string v1, "ONE_TO_ONE_CHAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->ONE_TO_ONE_CHAT:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 646
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    const-string v1, "STANDALONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->STANDALONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 627
    sget-object v6, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->UNSPECIFIED:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    aput-object v6, v1, v2

    sget-object v6, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->SMS:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    aput-object v6, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->ONE_TO_ONE_CHAT:Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 651
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->mValueToEnum:Landroid/util/SparseArray;

    .line 654
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 655
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->toInt()I

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

    .line 659
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 660
    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;
    .locals 3

    .line 679
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    if-eqz v0, :cond_0

    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    .line 684
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;
    .locals 1

    .line 627
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;
    .locals 1

    .line 627
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 669
    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$OneToManySelectedTech;->mValue:I

    return v0
.end method
