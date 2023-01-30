.class public Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.source "DialerPhoneNumberListAdapter.java"


# static fields
.field public static final SHORTCUT_ADD_TO_EXISTING_CONTACT:I = 0x2

.field public static final SHORTCUT_BLOCK_NUMBER:I = 0x5

.field public static final SHORTCUT_COUNT:I = 0x6

.field public static final SHORTCUT_CREATE_NEW_CONTACT:I = 0x1

.field public static final SHORTCUT_DIRECT_CALL:I = 0x0

.field public static final SHORTCUT_INVALID:I = -0x1

.field public static final SHORTCUT_MAKE_VIDEO_CALL:I = 0x4

.field public static final SHORTCUT_SEND_SMS_MESSAGE:I = 0x3


# instance fields
.field private final mBidiFormatter:Landroid/text/BidiFormatter;

.field private final mCountryIso:Ljava/lang/String;

.field private mFormattedQueryString:Ljava/lang/String;

.field private final mShortcutEnabled:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 53
    iput-object v0, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    .line 54
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 62
    invoke-static {p1}, Lcom/android/dialer/location/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    return-void
.end method

.method private assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_5

    const v1, 0x7f0801de

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    const p2, 0x7f11041e

    .line 222
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08010c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid shortcut type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p2, 0x7f110421

    .line 217
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801f5

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const p2, 0x7f110422

    .line 212
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801d2

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const p2, 0x7f11041d

    .line 207
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const p2, 0x7f110420

    .line 201
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0

    :cond_5
    const p2, 0x7f11041f

    .line 193
    iget-object v2, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 197
    invoke-virtual {v2, v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0, p2, v1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 198
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801b3

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    return-void
.end method

.method private setBackgroundResourceDish(Landroid/view/View;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08016e

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0800b9

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public disableAllShortcuts()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 83
    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFormattedQueryString()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 92
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result p1

    add-int/2addr p1, v0

    return p1

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getShortcutCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 74
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getShortcutTypeFromPosition(I)I
    .locals 3

    .line 153
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 158
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid position - greater than cursor count  but not a shortcut."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p2, :cond_0

    .line 110
    invoke-direct {p0, p2}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setBackgroundResourceDish(Landroid/view/View;)V

    .line 111
    move-object p1, p2

    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    return-object p2

    .line 114
    :cond_0
    new-instance p1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    iget-boolean v1, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mIsImsVideoEnabled:Z

    invoke-direct {p1, p2, p3, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setBackgroundResourceDish(Landroid/view/View;)V

    return-object p1

    .line 121
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setBackgroundResourceDish(Landroid/view/View;)V

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-virtual/range {p0 .. p5}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    return-object p1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 0

    .line 141
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object p1

    .line 143
    iget-boolean p2, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mIsImsVideoEnabled:Z

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setSupportVideoCallIcon(Z)V

    return-object p1
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2

    .line 248
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    .line 249
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    return-void
.end method

.method public setShortcutEnabled(IZ)Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aput-boolean p2, v1, p1

    return v0
.end method
