.class final Lcom/android/incallui/incall/impl/ButtonChooser;
.super Ljava/lang/Object;
.source "ButtonChooser.java"


# instance fields
.field private final config:Lcom/android/incallui/incall/impl/MappedButtonConfig;


# direct methods
.method public constructor <init>(Lcom/android/incallui/incall/impl/MappedButtonConfig;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/incall/impl/MappedButtonConfig;

    iput-object p1, p0, Lcom/android/incallui/incall/impl/ButtonChooser;->config:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    return-void
.end method

.method private isMutuallyExclusiveButtonAvailable(ILjava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 127
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private placeButtonsInSlots(ILjava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonChooser;->config:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-virtual {v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->getOrderedMappedSlots()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_2

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    iget-object v4, p0, Lcom/android/incallui/incall/impl/ButtonChooser;->config:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-virtual {v4, v3}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->getButtonsForSlot(I)Ljava/util/List;

    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/android/incallui/incall/impl/ButtonChooser;->config:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-virtual {v4}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->getSlotComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v1

    .line 86
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 87
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 89
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private placeConflictsInOpenSlots(ILjava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/incallui/incall/impl/ButtonChooser;->config:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    invoke-virtual {v0}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->getConflictComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_1

    return-void

    .line 110
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/incall/impl/ButtonChooser;->config:Lcom/android/incallui/incall/impl/MappedButtonConfig;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/incall/impl/MappedButtonConfig;->lookupMappingInfo(I)Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/incall/impl/MappedButtonConfig$MappingInfo;->getMutuallyExclusiveButton()I

    move-result v1

    .line 114
    invoke-direct {p0, v1, p2}, Lcom/android/incallui/incall/impl/ButtonChooser;->isMutuallyExclusiveButtonAvailable(ILjava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getButtonPlacement(ILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    if-eqz p1, :cond_2

    .line 64
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-direct {p0, p1, p2, v0, v6}, Lcom/android/incallui/incall/impl/ButtonChooser;->placeButtonsInSlots(ILjava/util/Set;Ljava/util/List;Ljava/util/List;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/incall/impl/ButtonChooser;->placeConflictsInOpenSlots(ILjava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 65
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
