.class public Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;
.super Lcom/android/dialer/app/filterednumber/NumbersAdapter;
.source "ViewNumbersToImportAdapter.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    return-void
.end method

.method public static newViewNumbersToImportAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;
    .locals 3

    .line 40
    new-instance v0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    new-instance v1, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 43
    invoke-static {p0}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p2, 0x2

    .line 51
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f09011a

    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p3, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;->updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
