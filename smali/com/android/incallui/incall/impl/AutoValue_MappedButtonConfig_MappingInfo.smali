.class final Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;
.super Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;
.source "AutoValue_MappedButtonConfig_MappingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;
    }
.end annotation


# instance fields
.field private final conflictOrder:I

.field private final mutuallyExclusiveButton:I

.field private final slot:I

.field private final slotOrder:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;-><init>()V

    .line 22
    iput p1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slot:I

    .line 23
    iput p2, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slotOrder:I

    .line 24
    iput p3, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->conflictOrder:I

    .line 25
    iput p4, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->mutuallyExclusiveButton:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 65
    check-cast p1, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    .line 66
    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slot:I

    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getSlot()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slotOrder:I

    .line 67
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getSlotOrder()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->conflictOrder:I

    .line 68
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getConflictOrder()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->mutuallyExclusiveButton:I

    .line 69
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getMutuallyExclusiveButton()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getConflictOrder()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->conflictOrder:I

    return v0
.end method

.method public getMutuallyExclusiveButton()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->mutuallyExclusiveButton:I

    return v0
.end method

.method public getSlot()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slot:I

    return v0
.end method

.method public getSlotOrder()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slotOrder:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 78
    iget v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slot:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 80
    iget v2, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slotOrder:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 82
    iget v2, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->conflictOrder:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 84
    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->mutuallyExclusiveButton:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MappingInfo{slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->slotOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", conflictOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->conflictOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mutuallyExclusiveButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;->mutuallyExclusiveButton:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
