.class public final Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlacesCursorLoader;
.super Landroid/content/CursorLoader;
.source "NearbyPlacesCursorLoader.java"


# static fields
.field private static final MAX_RESULTS:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 32
    invoke-static {p1, p2}, Lcom/android/dialer/searchfragment/nearbyplaces/NearbyPlacesCursorLoader;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/searchfragment/common/Projections;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/android/contacts/common/extensions/PhoneDirectoryExtenderAccessor;->get(Landroid/content/Context;)Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Lcom/android/contacts/common/extensions/PhoneDirectoryExtender;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "limit"

    const-string v0, "3"

    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
