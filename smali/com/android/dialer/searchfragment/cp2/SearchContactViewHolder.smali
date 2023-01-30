.class public final Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder$CallToAction;
    }
.end annotation


# instance fields
.field private final callToActionView:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private currentAction:I

.field private final nameOrNumberView:Landroid/widget/TextView;

.field private number:Ljava/lang/String;

.field private final numberView:Landroid/widget/TextView;

.field private final photo:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090238

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    const v0, 0x7f090250

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->nameOrNumberView:Landroid/widget/TextView;

    const v0, 0x7f09029c

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->numberView:Landroid/widget/TextView;

    const v0, 0x7f0900ac

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method private static getCallToAction(Landroid/database/Cursor;)I
    .locals 1

    const/16 v0, 0x8

    .line 169
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 125
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 126
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {v0, v1, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getLabel(Landroid/content/res/Resources;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 134
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 140
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private setCallToAction(Landroid/database/Cursor;)V
    .locals 2

    .line 144
    invoke-static {p1}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->getCallToAction(Landroid/database/Cursor;)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->currentAction:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f080121

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Call to action type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->currentAction:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0801f7

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private shouldShowPhoto(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3

    .line 113
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 117
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x4

    .line 118
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x3

    .line 81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->number:Ljava/lang/String;

    const/4 v0, 0x4

    .line 82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    iget-object v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->getLabel(Landroid/content/res/Resources;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->number:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f1100f5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->number:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 87
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->nameOrNumberView:Landroid/widget/TextView;

    invoke-static {p2, v7}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getNameWithQueryBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->numberView:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getNumberWithQueryBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->setCallToAction(Landroid/database/Cursor;)V

    .line 94
    invoke-direct {p0, p1, v7}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->shouldShowPhoto(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->nameOrNumberView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    invoke-virtual {p2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    const/4 p2, 0x6

    .line 97
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    .line 101
    invoke-static {p1}, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x5

    .line 102
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_1
    move-object v6, p1

    const/4 v8, 0x1

    .line 99
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_2

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->nameOrNumberView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->photo:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 181
    iget p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->currentAction:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f080121

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Call to action type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->currentAction:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 189
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->callToActionView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0801f7

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactViewHolder;->number:Ljava/lang/String;

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/telecom/TelecomUtil;->placeCall(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method
