.class public Lcom/android/dialer/callcomposer/GalleryGridAdapter;
.super Landroid/widget/CursorAdapter;
.source "GalleryGridAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/GalleryGridItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->views:Ljava/util/List;

    .line 48
    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 49
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    if-nez p4, :cond_0

    .line 78
    check-cast p1, Lcom/android/dialer/callcomposer/GalleryGridItemView;

    const/4 p2, 0x1

    .line 79
    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->showGallery(Z)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/android/dialer/callcomposer/GalleryGridItemView;

    .line 88
    invoke-virtual {p1, p3}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->bind(Landroid/database/Cursor;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object p2

    iget-object p3, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {p2, p3}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->setSelected(Z)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 68
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_1
    iget-object p3, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;I)V

    return-object p2
.end method

.method public insertEntries(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/GalleryGridItemData;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "GalleryGridAdapter.insertRows"

    const-string v4, "inserting %d rows"

    invoke-static {v3, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/dialer/callcomposer/GalleryGridItemData;->IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0x0

    .line 114
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v5, v3

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 117
    new-instance p1, Landroid/database/MergeCursor;

    new-array v3, v4, [Landroid/database/Cursor;

    aput-object v0, v3, v2

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-direct {p1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public insertEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/callcomposer/GalleryGridItemData;
    .locals 5

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GalleryGridAdapter.insertRow"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/dialer/callcomposer/GalleryGridItemData;->IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 125
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p2, 0x3

    const-string v4, ""

    aput-object v4, v2, p2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 127
    new-instance p2, Landroid/database/MergeCursor;

    new-array p1, p1, [Landroid/database/Cursor;

    aput-object v0, p1, v1

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-direct {p2, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 130
    new-instance p1, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-direct {p1, v0}, Lcom/android/dialer/callcomposer/GalleryGridItemData;-><init>(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00a3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callcomposer/GalleryGridItemView;

    .line 97
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->views:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;)V
    .locals 3

    .line 103
    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    .line 104
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callcomposer/GalleryGridItemView;

    .line 105
    invoke-virtual {v1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
