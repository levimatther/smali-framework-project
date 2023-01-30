.class final Lcom/android/dialer/contactsfragment/ContactsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/contactsfragment/ContactsAdapter$ContactsViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_CONTACT_VIEW_TYPE:I = 0x1

.field private static final CONTACT_VIEW_TYPE:I = 0x2

.field private static final UNKNOWN_VIEW_TYPE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final counts:[I

.field private final cursor:Landroid/database/Cursor;

.field private final headers:[Ljava/lang/String;

.field private final holderMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/android/dialer/contactsfragment/ContactViewHolder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->holderMap:Landroidx/collection/ArrayMap;

    .line 59
    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    .line 61
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->headers:[Ljava/lang/String;

    .line 62
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->counts:[I

    return-void
.end method

.method private static getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 158
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x4

    .line 159
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {v0, v1, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPhotoId(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x2

    .line 149
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getPhotoUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x3

    .line 153
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getHeaderString(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "+"

    return-object p1

    :cond_0
    const/4 v0, -0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->counts:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    add-int/2addr v1, v2

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->headers:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 83
    instance-of v0, p1, Lcom/android/dialer/contactsfragment/AddContactViewHolder;

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    check-cast p1, Lcom/android/dialer/contactsfragment/ContactViewHolder;

    .line 88
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->holderMap:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 92
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object v10

    .line 94
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v11

    .line 96
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getPhoto()Landroid/widget/QuickContactBadge;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    .line 100
    invoke-static {v4}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getPhotoId(Landroid/database/Cursor;)J

    move-result-wide v5

    iget-object v4, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->cursor:Landroid/database/Cursor;

    .line 101
    invoke-static {v4}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getPhotoUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x1

    move-object v4, v11

    move-object v8, v0

    .line 97
    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    .line 105
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->context:Landroid/content/Context;

    const v3, 0x7f1101ae

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 106
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getPhoto()Landroid/widget/QuickContactBadge;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 113
    :cond_2
    :goto_0
    invoke-virtual {p1, v10, v0, v11, v4}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->bind(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 73
    new-instance p2, Lcom/android/dialer/contactsfragment/ContactViewHolder;

    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->context:Landroid/content/Context;

    .line 74
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0054

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid view type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 70
    :cond_1
    new-instance p2, Lcom/android/dialer/contactsfragment/AddContactViewHolder;

    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->context:Landroid/content/Context;

    .line 71
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c002d

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dialer/contactsfragment/AddContactViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 124
    instance-of v0, p1, Lcom/android/dialer/contactsfragment/ContactViewHolder;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->holderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public refreshHeaders()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->holderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/contactsfragment/ContactViewHolder;

    .line 131
    iget-object v2, p0, Lcom/android/dialer/contactsfragment/ContactsAdapter;->holderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/dialer/contactsfragment/ContactsAdapter;->getHeaderString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x4

    .line 135
    :goto_3
    invoke-virtual {v1}, Lcom/android/dialer/contactsfragment/ContactViewHolder;->getHeaderView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
