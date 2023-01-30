.class public Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;,
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;",
        "Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;"
    }
.end annotation


# static fields
.field private static final KEY_FILTER:Ljava/lang/String; = "filter"


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mCursorReranker:Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private final mLoadFinishedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mUseCallableUri:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoadFinishedListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private callNumber(IZ)V
    .locals 4

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->cacheContactInfo(I)V

    .line 237
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getCallInitiationType(Z)Lcom/android/dialer/callintent/CallInitiationType$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1, p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setPositionOfSelectedSearchResult(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCharactersInSearchString(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 242
    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v2, v0, p2, v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V

    goto :goto_1

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "PhoneNumberPickerFragment.callNumber"

    const-string v1, "item at %d was clicked before adapter is ready, ignoring"

    .line 244
    invoke-static {v0, v1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getLookupKey(I)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 253
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->maybeTrackAnalytics(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private maybeTrackAnalytics(Ljava/lang/String;)V
    .locals 7

    .line 438
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "analytics_category"

    .line 441
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "analytics_action"

    .line 442
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "analytics_value"

    .line 443
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    float-to-long v5, p1

    .line 461
    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    const-string v4, ""

    .line 462
    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/logging/LoggingBindings;->sendHitEventAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private updateFilterHeaderView()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 180
    invoke-static {v1, v0, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnLoadFinishedListener(Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;)V
    .locals 1

    .line 319
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 320
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoadFinishedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected cacheContactInfo(I)V
    .locals 0

    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .line 390
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 392
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_1
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .line 382
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 384
    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    return-object v0
.end method

.method protected getCallInitiationType(Z)Lcom/android/dialer/callintent/CallInitiationType$Type;
    .locals 0

    .line 428
    sget-object p1, Lcom/android/dialer/callintent/CallInitiationType$Type;->UNKNOWN_INITIATION:Lcom/android/dialer/callintent/CallInitiationType$Type;

    return-object p1
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method protected getLookupKey(I)Ljava/lang/String;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 268
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOnPhoneNumberPickerListener()Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-object v0
.end method

.method protected getPhoneNumber(I)Ljava/lang/String;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 263
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0053

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected notifyListeners()V
    .locals 2

    .line 331
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 332
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoadFinishedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;

    .line 333
    invoke-interface {v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;->onLoadFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallAndShareIconClicked(I)V
    .locals 4

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.dialer.callcomposer.CallComposerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDialerContact(I)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object p1

    const-string v1, "CALL_COMPOSER_CONTACT"

    .line 116
    invoke-static {v0, v1, p1}, Lcom/android/dialer/protos/ProtoParsers;->put(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCapabilitiesUpdated()V
    .locals 6

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getListener()Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    move-result-object v1

    const/4 v2, 0x0

    .line 344
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/contacts/common/list/ContactListItemView;

    if-nez v3, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactListItemView;

    .line 353
    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListItemView;->getCallToAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 354
    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListItemView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListItemView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 356
    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListItemView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsCallComposer()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    .line 359
    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListItemView;->getPosition()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setCallToAction(ILcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const p2, 0x7f0c0050

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900dc

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09002a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 142
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getVisibleScrollbarEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 367
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 368
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoadFinishedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 369
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDetach()V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0

    const/4 p2, 0x0

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->callNumber(IZ)V

    return-void
.end method

.method public onLightbringerIconClicked(I)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->stopRecording()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/dialer/lightbringer/Lightbringer;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 104
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 280
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 283
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mCursorReranker:Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 285
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mCursorReranker:Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;

    invoke-interface {v0, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;->rerankCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p2

    .line 290
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_1

    .line 293
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    if-eqz p2, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->notifyListeners()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 217
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPause()V

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 152
    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    .line 160
    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->registerCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const-string v1, "filter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onVideoCallIconClicked(I)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_SEARCH:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->callNumber(IZ)V

    return-void
.end method

.method public removeOnLoadFinishedListener(Lcom/android/contacts/common/list/PhoneNumberPickerFragment$OnLoadFinishedListener;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 326
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoadFinishedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "filter"

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 416
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 417
    iget-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz p1, :cond_3

    .line 418
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->reloadData()V

    .line 420
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    return-void
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-void
.end method

.method public setReranker(Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;)V
    .locals 0

    .line 308
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 309
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mCursorReranker:Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 170
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    return-void
.end method

.method protected startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 274
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public usesCallableUri()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    return v0
.end method
