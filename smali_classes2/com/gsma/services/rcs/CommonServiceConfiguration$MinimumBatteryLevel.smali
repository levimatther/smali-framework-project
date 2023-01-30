.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinimumBatteryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum NEVER_STOP:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 228
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v1, "NEVER_STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NEVER_STOP:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 232
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v1, "PERCENT_5"

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 236
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v1, "PERCENT_10"

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v5}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 240
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v1, "PERCENT_20"

    const/4 v5, 0x3

    const/16 v6, 0x14

    invoke-direct {v0, v1, v5, v6}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 224
    sget-object v6, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NEVER_STOP:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v6, v1, v2

    sget-object v6, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v6, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    .line 247
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 248
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->toInt()I

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

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 3

    .line 272
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    if-eqz v0, :cond_0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 277
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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 1

    .line 224
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 1

    .line 224
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValue:I

    return v0
.end method
