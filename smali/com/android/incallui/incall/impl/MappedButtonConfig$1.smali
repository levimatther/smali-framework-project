.class Lcom/android/incallui/incall/impl/MappedButtonConfig$1;
.super Ljava/lang/Object;
.source "MappedButtonConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/incall/impl/MappedButtonConfig;->getSlotComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/MappedButtonConfig;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/MappedButtonConfig;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/incallui/incall/impl/MappedButtonConfig$1;->this$0:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/incallui/incall/impl/MappedButtonConfig$1;->this$0:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->lookupMappingInfo(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/android/incallui/incall/impl/MappedButtonConfig$1;->this$0:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->lookupMappingInfo(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object p2

    .line 114
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getSlot()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getSlot()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getSlotOrder()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getSlotOrder()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lhs and rhs don\'t go in the same slot"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/incall/impl/MappedButtonConfig$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
