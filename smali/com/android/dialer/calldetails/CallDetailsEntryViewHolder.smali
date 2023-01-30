.class public Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallDetailsEntryViewHolder.java"


# instance fields
.field private final callDuration:Landroid/widget/TextView;

.field public callId:J

.field private final callLogType:Landroid/widget/ImageView;

.field private final callTime:Landroid/widget/TextView;

.field private final callTypeIcon:Lcom/android/dialer/calllogutils/CallTypeIconsView;

.field private final callTypeText:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private final multimediaAttachmentsNumber:Landroid/widget/TextView;

.field private final multimediaDetails:Landroid/widget/TextView;

.field private final multimediaDetailsContainer:Landroid/view/View;

.field private final multimediaDivider:Landroid/view/View;

.field private final multimediaImage:Landroid/widget/ImageView;

.field private final multimediaImageContainer:Landroid/view/View;

.field private final postCallNote:Landroid/widget/TextView;

.field private final relativeLayout:Landroid/widget/RelativeLayout;

.field private final rttTypeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    const v0, 0x7f090096

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090097

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllogutils/CallTypeIconsView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTypeIcon:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    const v0, 0x7f0900ad

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTypeText:Landroid/widget/TextView;

    const v0, 0x7f0900ab

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTime:Landroid/widget/TextView;

    const v0, 0x7f090098

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    const v0, 0x7f090213

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaImageContainer:Landroid/view/View;

    const v0, 0x7f090143

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetailsContainer:Landroid/view/View;

    const v0, 0x7f090140

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDivider:Landroid/view/View;

    const v0, 0x7f090211

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetails:Landroid/widget/TextView;

    const v0, 0x7f09024c

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->postCallNote:Landroid/widget/TextView;

    const v0, 0x7f090212

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaImage:Landroid/widget/ImageView;

    const v0, 0x7f090210

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaAttachmentsNumber:Landroid/widget/TextView;

    const v0, 0x7f0900a7

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callLogType:Landroid/widget/ImageView;

    const v0, 0x7f0900b0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->rttTypeIcon:Landroid/widget/ImageView;

    return-void
.end method

.method private static getColorForCallType(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const p1, 0x7f06010e

    .line 276
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p1, 0x7f0600bb

    .line 268
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static isIncoming(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)Z
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_POST_CALL:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    if-eq v0, v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    move-result-object p0

    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setMultimediaDetails(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Z)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDivider:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const-string v0, "CallDetailsEntryViewHolder.setMultimediaDetails"

    if-eqz p3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no data, hiding UI"

    .line 208
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetailsContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 212
    :cond_1
    invoke-virtual {p2, v2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object p3

    .line 213
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetailsContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetailsContainer:Landroid/view/View;

    new-instance v3, Lcom/android/dialer/calldetails/-$$Lambda$CallDetailsEntryViewHolder$MRMZTMfuLrONU2NmMzlq48oJC7g;

    invoke-direct {v3, p0, p1}, Lcom/android/dialer/calldetails/-$$Lambda$CallDetailsEntryViewHolder$MRMZTMfuLrONU2NmMzlq48oJC7g;-><init>(Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaImageContainer:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 217
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "setting image"

    .line 218
    invoke-static {v0, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaImageContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaImage:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 221
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetails:Landroid/widget/TextView;

    .line 222
    invoke-static {p3}, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->isIncoming(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f1103db

    goto :goto_1

    :cond_2
    const v4, 0x7f11042e

    .line 221
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "no image"

    .line 224
    invoke-static {v0, v4, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_2
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v4, 0x7f110314

    if-nez v1, :cond_4

    new-array v1, v2, [Ljava/lang/Object;

    const-string v5, "showing text"

    .line 229
    invoke-static {v0, v5, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->multimediaDetails:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    new-array v6, v3, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v6, v2

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 230
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "no text"

    .line 233
    invoke-static {v0, v1, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :goto_3
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_5

    .line 237
    invoke-virtual {p2, v3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "showing post call note"

    .line 238
    invoke-static {v0, v1, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->postCallNote:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->postCallNote:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 241
    invoke-virtual {p2, v3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 240
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->postCallNote:Landroid/widget/TextView;

    new-instance p3, Lcom/android/dialer/calldetails/-$$Lambda$CallDetailsEntryViewHolder$B0xW8MPLcr72o95rfKTjPs_MdYo;

    invoke-direct {p3, p0, p1}, Lcom/android/dialer/calldetails/-$$Lambda$CallDetailsEntryViewHolder$B0xW8MPLcr72o95rfKTjPs_MdYo;-><init>(Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no post call note"

    .line 244
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private startSmsIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 250
    invoke-static {p2}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setMultimediaDetails$0$CallDetailsEntryViewHolder(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 214
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->startSmsIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setMultimediaDetails$1$CallDetailsEntryViewHolder(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->startSmsIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method setCallDetails(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/android/dialer/calllogutils/CallTypeHelper;Z)V
    .locals 10

    .line 106
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getCallType()I

    move-result v0

    .line 107
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getCallId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callId:J

    .line 108
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getFeatures()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 110
    :goto_0
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getFeatures()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 114
    :goto_1
    new-instance v6, Lcom/android/voicemail/impl/SubscriptionInfoHelper;

    iget-object v7, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    .line 115
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->getSimSlotIndex()I

    .line 117
    invoke-virtual {v6}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->hasSubId()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 119
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v6

    const-string v7, "config_enable_conference_dialer"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    .line 121
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is4GConferenceEnabledSub: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "CallDetailsEntryViewHolder.setCallDetails"

    invoke-static {v8, v6, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_3
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTypeIcon:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    invoke-virtual {v6, v1}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setShowVideo(Z)V

    .line 129
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTypeIcon:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    iget-object v7, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getFeatures()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/dialer/oem/MotorolaUtils;->shouldShowHdIconInCallLog(Landroid/content/Context;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setShowHd(Z)V

    .line 130
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTypeIcon:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    iget-object v7, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    .line 131
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getFeatures()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/dialer/oem/MotorolaUtils;->shouldShowWifiIconInCallLog(Landroid/content/Context;I)Z

    move-result v7

    .line 130
    invoke-virtual {v6, v7}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->setShowWifi(Z)V

    .line 133
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getFeatures()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tct/common/RttManager;->isRttCallLog(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->rttTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->rttTypeIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f080090

    goto :goto_3

    :cond_4
    const v7, 0x7f08020d

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 138
    :cond_5
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->rttTypeIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :goto_4
    iget-object v6, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTypeText:Landroid/widget/TextView;

    invoke-virtual {p3, v0, v1, v4}, Lcom/android/dialer/calllogutils/CallTypeHelper;->getCallTypeText(IZZ)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->getCallDate(Landroid/content/Context;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTime:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    invoke-static {v0}, Lcom/android/dialer/calllogutils/CallTypeHelper;->isMissedCallType(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 151
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 155
    :cond_6
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    .line 158
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDuration()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDataUsage()J

    move-result-wide v8

    .line 157
    invoke-static {v1, v6, v7, v8, v9}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->formatDurationAndDataUsage(Landroid/content/Context;JJ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 156
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    .line 161
    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDuration()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDataUsage()J

    move-result-wide v8

    .line 160
    invoke-static {v1, v6, v7, v8, v9}, Lcom/android/dialer/calllogutils/CallEntryFormatter;->formatDurationAndDataUsageA11y(Landroid/content/Context;JJ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 159
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    :goto_5
    iget-object p3, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 166
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isSimpleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x44

    .line 168
    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTime:Landroid/widget/TextView;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTime:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 175
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f080094

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    :cond_7
    const/16 v1, 0x36

    .line 178
    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callTime:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callDuration:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    :goto_6
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-direct {p0, p1, p2, p4}, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->setMultimediaDetails(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Z)V

    if-ne v0, v2, :cond_8

    .line 188
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callLogType:Landroid/widget/ImageView;

    const p2, 0x7f08008e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    :cond_8
    const/4 p1, 0x3

    if-ne v0, p1, :cond_9

    .line 191
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callLogType:Landroid/widget/ImageView;

    const p2, 0x7f08008d

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    :cond_9
    if-ne v0, v5, :cond_a

    .line 193
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callLogType:Landroid/widget/ImageView;

    const p2, 0x7f08008c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    :cond_a
    const/4 p1, 0x5

    if-ne v0, p1, :cond_b

    .line 196
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callLogType:Landroid/widget/ImageView;

    const p2, 0x7f08008f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7

    :cond_b
    const/4 p1, 0x6

    if-ne v0, p1, :cond_c

    .line 199
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callLogType:Landroid/widget/ImageView;

    const p2, 0x7f08008b

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_c
    :goto_7
    return-void
.end method
