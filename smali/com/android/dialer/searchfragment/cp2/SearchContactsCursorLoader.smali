.class public final Lcom/android/dialer/searchfragment/cp2/SearchContactsCursorLoader;
.super Landroid/content/CursorLoader;
.source "SearchContactsCursorLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 29
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/dialer/searchfragment/common/Projections;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "sort_key ASC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .line 40
    new-instance v0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;

    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/cp2/SearchContactsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
