.class public Lcom/android/dialer/app/filterednumber/NumbersAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "NumbersAdapter.java"


# instance fields
.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/phonenumbercache/ContactInfoHelper;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 8

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    new-array v6, v0, [I

    const v3, 0x7f0c003a

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 52
    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 44
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 53
    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 55
    iput-object p3, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    .line 56
    iput-object p4, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method private getDisplayNumber(Lcom/android/dialer/phonenumbercache/ContactInfo;)Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object p1

    .line 116
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getNumberTypeOrLocation(Lcom/android/dialer/phonenumbercache/ContactInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 124
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->label:Ljava/lang/String;

    .line 125
    invoke-static {v0, v1, p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadContactPhoto(Lcom/android/dialer/phonenumbercache/ContactInfo;Ljava/lang/String;Landroid/widget/QuickContactBadge;)V
    .locals 9

    .line 98
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 99
    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    iget-object v2, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 101
    invoke-virtual {v1, v2}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->isBusiness(Lcom/android/dialer/logging/ContactSource$Type;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v2

    .line 104
    :goto_1
    new-instance v8, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v8, p2, v0, v1, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 106
    iget-object v0, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 107
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110199

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-virtual {p3, p2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v5, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method public updateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const v0, 0x7f0900b5

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900b6

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09025b

    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1, v2}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    .line 66
    invoke-virtual {p1, v2}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mContactInfoHelper:Lcom/android/dialer/phonenumbercache/ContactInfoHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/dialer/phonenumbercache/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p3

    if-nez p3, :cond_1

    .line 71
    new-instance p3, Lcom/android/dialer/phonenumbercache/ContactInfo;

    invoke-direct {p3}, Lcom/android/dialer/phonenumbercache/ContactInfo;-><init>()V

    .line 72
    iput-object p2, p3, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    .line 74
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->getNumberTypeOrLocation(Lcom/android/dialer/phonenumbercache/ContactInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 75
    invoke-direct {p0, p3}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->getDisplayNumber(Lcom/android/dialer/phonenumbercache/ContactInfo;)Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 77
    invoke-virtual {v3, v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v4, p3, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    iget-object v2, p3, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    .line 82
    iget-object v4, p3, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 89
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x8

    .line 91
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-direct {p0, p3, v2, p1}, Lcom/android/dialer/app/filterednumber/NumbersAdapter;->loadContactPhoto(Lcom/android/dialer/phonenumbercache/ContactInfo;Ljava/lang/String;Landroid/widget/QuickContactBadge;)V

    return-void
.end method
