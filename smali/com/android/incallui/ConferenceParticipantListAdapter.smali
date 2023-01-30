.class public Lcom/android/incallui/ConferenceParticipantListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;
    }
.end annotation


# instance fields
.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mDisconnectListener:Landroid/view/View$OnClickListener;

.field private final mListView:Landroid/widget/ListView;

.field private mParentCanSeparate:Z

.field private final mParticipantsByCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$1;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$2;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    .line 106
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    .line 107
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 108
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ConferenceParticipantListAdapter;Landroid/view/View;)Lcom/android/incallui/call/DialerCall;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getCallFromView(Landroid/view/View;)Lcom/android/incallui/call/DialerCall;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/ConferenceParticipantListAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object p0
.end method

.method private getCallFromView(Landroid/view/View;)Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 468
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    return-object p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getResourceforState(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x7f1100f2

    goto :goto_0

    :pswitch_1
    const p0, 0x7f1100ef

    goto :goto_0

    :pswitch_2
    const p0, 0x7f1100f0

    goto :goto_0

    :pswitch_3
    const p0, 0x7f1100f1

    goto :goto_0

    :pswitch_4
    const p0, 0x7f1100ed

    goto :goto_0

    :pswitch_5
    const p0, 0x7f1100ee

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private refreshView(Ljava/lang/String;)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    sub-int v3, v1, v0

    if-gt v2, v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 192
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/2addr v2, v0

    .line 193
    iget-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZI)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const v4, 0x7f0900b3

    .line 327
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    const v4, 0x7f0900d5

    .line 328
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900d6

    .line 329
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/TextView;

    const v5, 0x7f0900d7

    .line 331
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    const v5, 0x7f0900d4

    .line 332
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0900d8

    .line 333
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 334
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 335
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v8

    const-string v10, "config_conference_call_show_participant_status"

    invoke-virtual {v8, v10, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0900d9

    .line 336
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move/from16 v8, p10

    .line 337
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p9, :cond_1

    .line 342
    iget-object v8, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    if-eqz p8, :cond_2

    .line 350
    iget-object v5, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    if-eqz p7, :cond_3

    goto :goto_2

    .line 355
    :cond_3
    new-instance v1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-object v5, p2

    move-object/from16 v7, p6

    invoke-direct {v1, p2, v7, v9}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    move-object v10, v1

    .line 360
    iget-object v5, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v7, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    if-nez v2, :cond_4

    .line 365
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 367
    :cond_4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 376
    :cond_5
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 377
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v1, p5

    .line 382
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method private sortParticipantList()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateParticipantInfo(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;)V"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateParticipantInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 396
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/call/DialerCall;

    .line 400
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v0, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v2

    .line 405
    :goto_1
    invoke-static {v6, v4, v8}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .line 409
    :cond_1
    iget-object v8, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 410
    iget-object v7, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 411
    invoke-virtual {v5, v4}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/call/DialerCall;)V

    .line 412
    invoke-virtual {v5, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 415
    :cond_2
    new-instance v3, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-direct {v3, v4, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;-><init>(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 416
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    goto :goto_0

    .line 422
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 423
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 428
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 435
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 213
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c004b

    .line 214
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 217
    :cond_0
    iget-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 218
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    .line 219
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 221
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 225
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->isCacheLookupComplete()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    .line 228
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance v5, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;

    invoke-direct {v5, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    .line 226
    invoke-virtual {v2, v3, p1, v5}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 232
    :cond_2
    iget-boolean p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x1000

    .line 234
    invoke-virtual {p3, p1}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p1

    if-eqz p1, :cond_3

    move v9, v4

    goto :goto_1

    :cond_3
    move v9, v0

    :goto_1
    const/16 p1, 0x2000

    .line 236
    invoke-virtual {p3, p1}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v10

    .line 238
    iget-object p1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 239
    invoke-static {p1, v0, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 242
    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 245
    invoke-virtual {p3, p1}, Lcom/android/incallui/call/DialerCall;->updateNameIfRestricted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 252
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getActualState()I

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getResourceforState(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p2

    .line 242
    invoke-direct/range {v1 .. v11}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZI)V

    .line 256
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public refreshCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 166
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 170
    invoke-virtual {v1, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/call/DialerCall;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateContactInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 297
    invoke-virtual {v0, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const/4 p2, 0x1

    .line 298
    invoke-virtual {v0, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCacheLookupComplete(Z)V

    .line 299
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateParticipants(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/call/DialerCall;",
            ">;Z)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 124
    :cond_0
    iput-boolean p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipantInfo(Ljava/util/List;)V

    return-void
.end method
