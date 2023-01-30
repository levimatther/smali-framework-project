.class final Lcom/android/dialer/contactsfragment/ContactsCursorLoader;
.super Landroid/content/CursorLoader;
.source "ContactsCursorLoader.java"


# static fields
.field public static final CONTACTS_PROJECTION_DISPLAY_NAME_ALTERNATIVE:[Ljava/lang/String;

.field public static final CONTACTS_PROJECTION_DISPLAY_NAME_PRIMARY:[Ljava/lang/String;

.field public static final CONTACT_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_LOOKUP_KEY:I = 0x4

.field public static final CONTACT_PHOTO_ID:I = 0x2

.field public static final CONTACT_PHOTO_URI:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "photo_id"

    const-string v3, "photo_thumb_uri"

    const-string v4, "lookup"

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;->CONTACTS_PROJECTION_DISPLAY_NAME_PRIMARY:[Ljava/lang/String;

    const-string v1, "display_name_alt"

    .line 41
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;->CONTACTS_PROJECTION_DISPLAY_NAME_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 51
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 54
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string/jumbo v2, "true"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ASC"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 51
    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstanceDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/contactsfragment/ContactsCursorLoader;
    .locals 2

    .line 70
    new-instance v0, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;

    sget-object v1, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;->CONTACTS_PROJECTION_DISPLAY_NAME_ALTERNATIVE:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstanceDisplayNamePrimary(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/contactsfragment/ContactsCursorLoader;
    .locals 2

    .line 65
    new-instance v0, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;

    sget-object v1, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;->CONTACTS_PROJECTION_DISPLAY_NAME_PRIMARY:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/dialer/contactsfragment/ContactsCursorLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
