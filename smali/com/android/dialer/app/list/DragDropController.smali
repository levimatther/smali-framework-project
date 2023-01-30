.class public Lcom/android/dialer/app/list/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/list/DragDropController$DragItemContainer;
    }
.end annotation


# instance fields
.field private final mDragItemContainer:Lcom/android/dialer/app/list/DragDropController$DragItemContainer;

.field private final mLocationOnScreen:[I

.field private final mOnDragDropListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/app/list/OnDragDropListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/list/DragDropController$DragItemContainer;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 33
    iput-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mLocationOnScreen:[I

    .line 36
    iput-object p1, p0, Lcom/android/dialer/app/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/app/list/DragDropController$DragItemContainer;

    return-void
.end method


# virtual methods
.method public addOnDragDropListener(Lcom/android/dialer/app/list/OnDragDropListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handleDragFinished(IIZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/list/OnDragDropListener;

    invoke-interface {v1}, Lcom/android/dialer/app/list/OnDragDropListener;->onDroppedOnRemove()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 80
    :cond_0
    :goto_1
    iget-object p3, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    .line 81
    iget-object p3, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/dialer/app/list/OnDragDropListener;

    invoke-interface {p3, p1, p2}, Lcom/android/dialer/app/list/OnDragDropListener;->onDragFinished(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public handleDragHovered(Landroid/view/View;II)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mLocationOnScreen:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    iget-object p1, p0, Lcom/android/dialer/app/list/DragDropController;->mLocationOnScreen:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/2addr p2, v1

    const/4 v1, 0x1

    .line 65
    aget p1, p1, v1

    add-int/2addr p3, p1

    .line 66
    iget-object p1, p0, Lcom/android/dialer/app/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/app/list/DragDropController$DragItemContainer;

    .line 67
    invoke-interface {p1, p2, p3}, Lcom/android/dialer/app/list/DragDropController$DragItemContainer;->getViewForLocation(II)Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    move-result-object p1

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/app/list/OnDragDropListener;

    invoke-interface {v1, p2, p3, p1}, Lcom/android/dialer/app/list/OnDragDropListener;->onDragHovered(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method handleDragStarted(Landroid/view/View;II)Z
    .locals 4

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mLocationOnScreen:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 47
    iget-object p1, p0, Lcom/android/dialer/app/list/DragDropController;->mLocationOnScreen:[I

    aget v0, p1, v2

    add-int/2addr p2, v0

    .line 48
    aget p1, p1, v1

    add-int/2addr p3, p1

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/app/list/DragDropController$DragItemContainer;

    .line 51
    invoke-interface {p1, p2, p3}, Lcom/android/dialer/app/list/DragDropController$DragItemContainer;->getViewForLocation(II)Lcom/android/dialer/app/list/PhoneFavoriteSquareTileView;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/OnDragDropListener;

    invoke-interface {v0, p2, p3, p1}, Lcom/android/dialer/app/list/OnDragDropListener;->onDragStarted(IILcom/android/dialer/app/list/PhoneFavoriteSquareTileView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removeOnDragDropListener(Lcom/android/dialer/app/list/OnDragDropListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/dialer/app/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
