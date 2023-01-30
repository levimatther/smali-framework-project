.class public Lcom/android/dialer/app/list/SmartDialNumberListAdapter;
.super Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;
.source "SmartDialNumberListAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    invoke-static {}, Lcom/android/dialer/smartdial/SmartDialPrefix;->getMap()Lcom/android/dialer/smartdial/SmartDialMap;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)V

    iput-object p1, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1, p1}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    return-void
.end method


# virtual methods
.method public configureLoader(Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    invoke-virtual {p1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->setQuery(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 3

    .line 72
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->clearHighlightSequences()V

    .line 73
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    invoke-virtual {v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->getMatchPositions()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    .line 76
    iget v2, v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    iget v1, v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    invoke-virtual {p1, v2, v1}, Lcom/android/contacts/common/list/ContactListItemView;->addNameHighlightSequence(II)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    const/4 v1, 0x3

    .line 90
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;)Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 92
    iget v0, p2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    iget p2, p2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    invoke-virtual {p1, v0, p2}, Lcom/android/contacts/common/list/ContactListItemView;->addNumberHighlightSequence(II)V

    :cond_1
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    invoke-super {p0, p1}, Lcom/android/dialer/app/list/DialerPhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    return-void
.end method

.method public setShowEmptyListForNullQuery(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/dialer/app/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/smartdial/SmartDialNameMatcher;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->setShouldMatchEmptyQuery(Z)V

    return-void
.end method
