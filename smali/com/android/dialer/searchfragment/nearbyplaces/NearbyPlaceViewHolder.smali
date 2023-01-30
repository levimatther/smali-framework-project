.class public final Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NearbyPlaceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private number:Ljava/lang/String;

.field private final photo:Landroid/widget/QuickContactBadge;

.field private final placeAddress:Landroid/widget/TextView;

.field private final placeName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090238

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->photo:Landroid/widget/QuickContactBadge;

    const v0, 0x7f090250

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->placeName:Landroid/widget/TextView;

    const v0, 0x7f09029c

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->placeAddress:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method private static getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 80
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 81
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {v0, v1, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x3

    .line 61
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->number:Ljava/lang/String;

    const/4 v0, 0x4

    .line 62
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    .line 63
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->placeName:Landroid/widget/TextView;

    invoke-static {p2, v7}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getNameWithQueryBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->placeAddress:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/android/dialer/searchfragment/common/QueryBoldingUtil;->getNameWithQueryBolded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x6

    .line 68
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->photo:Landroid/widget/QuickContactBadge;

    .line 72
    invoke-static {p1}, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x5

    .line 73
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v6, p1

    const/4 v8, 0x1

    .line 70
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 87
    iget-object p1, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v1, p0, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlaceViewHolder;->number:Ljava/lang/String;

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->REGULAR_SEARCH:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 88
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Lcom/android/dialer/telecom/TelecomUtil;->placeCall(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
