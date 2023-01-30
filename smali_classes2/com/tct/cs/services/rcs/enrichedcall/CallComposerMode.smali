.class public final enum Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;
.super Ljava/lang/Enum;
.source "CallComposerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

.field public static final enum DISABLE:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

.field public static final enum DUAL_MODE:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

.field public static final enum ENRICHED_CALL:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

.field public static final enum MULTIMEDIA_TELEPHONY:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->DISABLE:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    .line 15
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    const-string v1, "ENRICHED_CALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->ENRICHED_CALL:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    .line 19
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    const-string v1, "MULTIMEDIA_TELEPHONY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->MULTIMEDIA_TELEPHONY:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    .line 24
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    const-string v1, "DUAL_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->DUAL_MODE:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    .line 7
    sget-object v6, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->DISABLE:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    aput-object v6, v1, v2

    sget-object v6, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->ENRICHED_CALL:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    aput-object v6, v1, v3

    sget-object v3, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->MULTIMEDIA_TELEPHONY:Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->$VALUES:[Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->mValueToEnum:Landroid/util/SparseArray;

    .line 31
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->values()[Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 32
    sget-object v4, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->toInt()I

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->mValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;
    .locals 3

    .line 56
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;
    .locals 1

    .line 7
    const-class v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    return-object p0
.end method

.method public static values()[Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->$VALUES:[Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    invoke-virtual {v0}, [Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/CallComposerMode;->mValue:I

    return v0
.end method
