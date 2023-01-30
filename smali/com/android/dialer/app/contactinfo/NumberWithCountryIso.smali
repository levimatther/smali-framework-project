.class public final Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;
.super Ljava/lang/Object;
.source "NumberWithCountryIso.java"


# instance fields
.field public final countryIso:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;

    if-nez v1, :cond_1

    return v0

    .line 46
    :cond_1
    check-cast p1, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;

    .line 47
    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method
