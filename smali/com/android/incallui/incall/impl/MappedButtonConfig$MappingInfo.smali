.class abstract Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;
.super Ljava/lang/Object;
.source "MappedButtonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/MappedButtonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MappingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
    }
.end annotation


# static fields
.field public static final NO_MUTUALLY_EXCLUSIVE_BUTTON_SET:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
    .locals 1

    .line 185
    new-instance v0, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;

    invoke-direct {v0}, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;-><init>()V

    .line 186
    invoke-virtual {v0, p0}, Lcom/android/incallui/incall/impl/AutoValue_MappedButtonConfig_MappingInfo$Builder;->setSlot(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object p0

    const v0, 0x7fffffff

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setConflictOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object p0

    const/4 v0, -0x1

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;->setMutuallyExclusiveButton(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getConflictOrder()I
.end method

.method public abstract getMutuallyExclusiveButton()I
.end method

.method public abstract getSlot()I
.end method

.method public abstract getSlotOrder()I
.end method
