.class final Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;
.super Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
.source "AutoValue_MappedButtonConfig_MappingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private conflictOrder:Ljava/lang/Integer;

.field private mutuallyExclusiveButton:Ljava/lang/Integer;

.field private slot:Ljava/lang/Integer;

.field private slotOrder:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->slot:Ljava/lang/Integer;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->slotOrder:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " slotOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->conflictOrder:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conflictOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->mutuallyExclusiveButton:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mutuallyExclusiveButton"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    new-instance v0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;

    iget-object v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->slot:Ljava/lang/Integer;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->slotOrder:Ljava/lang/Integer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->conflictOrder:Ljava/lang/Integer;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->mutuallyExclusiveButton:Ljava/lang/Integer;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo;-><init>(IIIILcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$1;)V

    return-object v0

    .line 131
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConflictOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
    .locals 0

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->conflictOrder:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMutuallyExclusiveButton(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
    .locals 0

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->mutuallyExclusiveButton:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSlot(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
    .locals 0

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->slot:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
    .locals 0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->slotOrder:Ljava/lang/Integer;

    return-object p0
.end method
