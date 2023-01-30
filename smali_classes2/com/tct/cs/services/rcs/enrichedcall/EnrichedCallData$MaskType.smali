.class public final enum Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;
.super Ljava/lang/Enum;
.source "EnrichedCallData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum CHAT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum FT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum IMPORTANCE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum MAP_PICTURE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum POST_NOTE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum POST_VOICE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum PRE_IMAGE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum PRE_LOCATION:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum SKETCH_PICTURE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

.field public static final enum SUBJECT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 58
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "SUBJECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->SUBJECT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 59
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "IMPORTANCE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->IMPORTANCE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 60
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "PRE_LOCATION"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->PRE_LOCATION:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 61
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "PRE_IMAGE"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->PRE_IMAGE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 62
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "POST_NOTE"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->POST_NOTE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 63
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "POST_VOICE"

    const/4 v8, 0x5

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->POST_VOICE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 64
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "MAP_PICTURE"

    const/4 v9, 0x6

    const/16 v10, 0x40

    invoke-direct {v0, v1, v9, v10}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->MAP_PICTURE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 65
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "SKETCH_PICTURE"

    const/4 v10, 0x7

    const/16 v11, 0x80

    invoke-direct {v0, v1, v10, v11}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->SKETCH_PICTURE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 66
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "CHAT"

    const/16 v11, 0x100

    invoke-direct {v0, v1, v7, v11}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->CHAT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 67
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const-string v1, "FT"

    const/16 v11, 0x9

    const/16 v12, 0x200

    invoke-direct {v0, v1, v11, v12}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->FT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    .line 56
    sget-object v12, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->SUBJECT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v12, v1, v2

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->IMPORTANCE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->PRE_LOCATION:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->PRE_IMAGE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->POST_NOTE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->POST_VOICE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->MAP_PICTURE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->SKETCH_PICTURE:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->CHAT:Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    aput-object v2, v1, v7

    aput-object v0, v1, v11

    sput-object v1, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->$VALUES:[Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->mValue:I

    return-void
.end method

.method public static addMaskType(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static convertMaskType(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->values()[Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 90
    invoke-static {p0, v4}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->isIncludeType(ILcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isIncludeType(ILcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;)Z
    .locals 1

    .line 102
    invoke-virtual {p1}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->toInt()I

    move-result v0

    and-int/2addr p0, v0

    invoke-virtual {p1}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->toInt()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeMaskType(ILcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;)I
    .locals 0

    .line 106
    invoke-virtual {p1}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->toInt()I

    move-result p1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static valueOf(I)Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;
    .locals 5

    .line 81
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->values()[Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->toInt()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;
    .locals 1

    .line 56
    const-class v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    return-object p0
.end method

.method public static values()[Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;
    .locals 1

    .line 56
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->$VALUES:[Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    invoke-virtual {v0}, [Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/EnrichedCallData$MaskType;->mValue:I

    return v0
.end method
