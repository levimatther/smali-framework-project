.class public Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallDetailsHeaderViewHolder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final callBackButton:Landroid/view/View;

.field private contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private final contactPhoto:Landroid/widget/QuickContactBadge;

.field private final context:Landroid/content/Context;

.field private final nameView:Landroid/widget/TextView;

.field private final networkView:Landroid/widget/TextView;

.field private final numberView:Landroid/widget/TextView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field public verstat:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v0, "CallDetailsHeaderViewHolder"

    .line 57
    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->verstat:I

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->context:Landroid/content/Context;

    const v0, 0x7f090089

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->callBackButton:Landroid/view/View;

    const v0, 0x7f0900df

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    const v0, 0x7f090237

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    const v0, 0x7f09021a

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->networkView:Landroid/widget/TextView;

    const v0, 0x7f09025b

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->contactPhoto:Landroid/widget/QuickContactBadge;

    const v0, 0x7f0900db

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public setContactPhoto(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "photo_id"

    const-string v2, "display_name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 239
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 240
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 245
    :cond_1
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_2
    throw p1

    :cond_3
    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    .line 251
    :cond_5
    invoke-static {p2}, Lcom/android/contacts/common/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 252
    :goto_1
    new-instance v10, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v10, v1, p2, v2, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 255
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 256
    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->contactPhoto:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method public setNameView(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 218
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method updateContactInfo(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 10

    .line 95
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 96
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->contactPhoto:Landroid/widget/QuickContactBadge;

    .line 99
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v9

    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoId()J

    move-result-wide v4

    .line 101
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoUri()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v9

    .line 102
    :goto_1
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getContactType()I

    move-result v8

    .line 97
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 126
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f1100f5

    new-array v5, v2, [Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    .line 133
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 130
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_3
    iget-object v4, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_4
    invoke-static {}, Lcom/android/incallui/shaken/CallLogVerstat;->getInstance()Lcom/android/incallui/shaken/CallLogVerstat;

    move-result-object v0

    iget-object v4, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->context:Landroid/content/Context;

    iget v5, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->verstat:I

    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/incallui/shaken/CallLogVerstat;->updateCallDetailInfo(Landroid/content/Context;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 144
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->networkView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->networkView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dialer/dialercontact/SimDetails;->getNetwork()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getColor()I

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->networkView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/SimDetails;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :cond_7
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 153
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    const/high16 v4, 0x41900000    # 18.0f

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x44

    .line 155
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_5

    :cond_8
    const/16 v0, 0x36

    .line 163
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->numberView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    :goto_5
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsHeaderViewHolder;->callBackButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
