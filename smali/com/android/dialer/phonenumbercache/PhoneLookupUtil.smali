.class public final Lcom/android/dialer/phonenumbercache/PhoneLookupUtil;
.super Ljava/lang/Object;
.source "PhoneLookupUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactIdColumnNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "contact_id"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "sip"

    .line 36
    invoke-virtual {p0, v2, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "_id"

    :goto_0
    return-object v1
.end method
