.class public Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;
.super Lcom/android/dialer/app/filterednumber/NumbersAdapter;
.source "BlockedNumbersAdapter.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    return-void
.end method

.method public static newBlockedNumbersAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;
    .locals 3

    .line 44
    new-instance v0, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;

    new-instance v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 47
    invoke-static {p0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 54
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v0, "country_iso"

    .line 56
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number"

    .line 57
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f09011a

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 60
    new-instance v8, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p3

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter$1;-><init>(Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersAdapter;->updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
