.class abstract Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
.super Ljava/lang/Object;
.source "MappedButtonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;
.end method

.method public abstract setConflictOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
.end method

.method public abstract setMutuallyExclusiveButton(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
.end method

.method public abstract setSlot(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
.end method

.method public abstract setSlotOrder(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo$Builder;
.end method
