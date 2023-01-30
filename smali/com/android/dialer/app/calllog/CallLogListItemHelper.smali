.class Lcom/android/dialer/app/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

.field private final mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;Landroid/content/res/Resources;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    .line 54
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 55
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    return-void
.end method

.method private getContactBadgeDescription(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 4

    .line 141
    iget-boolean v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isSpam:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1101b8

    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v1

    .line 142
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f110199

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLastCallType([I)I
    .locals 1

    .line 257
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 258
    aget p1, p1, v0

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method private getNameOrNumber(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 1

    .line 272
    invoke-virtual {p1}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p1}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCallDescription(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 10

    .line 179
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v1, p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v2, p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCallDate(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 187
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 190
    iget-object v4, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f1101a8

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    array-length v9, v9

    .line 192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 196
    :cond_0
    iget v4, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->features:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f1101be

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v7, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v7}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    .line 201
    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    iget-object v8, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    .line 202
    invoke-static {v7, v8, v4}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->createAccountLabelDescription(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 204
    iget-object v7, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callTypes:[I

    iget-boolean p1, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isRead:Z

    invoke-virtual {p0, v7, p1}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getCallDescriptionStringID([IZ)I

    move-result p1

    .line 205
    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 207
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v0, v7, v5

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    aput-object v1, v7, v6

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    .line 206
    invoke-static {p1, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 205
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3
.end method

.method public getCallDescriptionStringID([IZ)I
    .locals 1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getLastCallType([I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    const p1, 0x7f1101b1

    goto :goto_2

    :cond_2
    const p1, 0x7f1101ba

    goto :goto_2

    :cond_3
    const p1, 0x7f1101a9

    goto :goto_2

    :cond_4
    :goto_0
    const p1, 0x7f1101a4

    goto :goto_2

    :cond_5
    :goto_1
    const p1, 0x7f1101a5

    :goto_2
    return p1
.end method

.method public setActionContentDescriptions(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 6

    .line 106
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "CallLogListItemHelper.setActionContentDescriptions"

    const-string v3, "setActionContentDescriptions; name or number is null."

    .line 107
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    .line 116
    :goto_0
    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1101bf

    .line 118
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v0, v5, v1

    .line 117
    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f11019b

    .line 122
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v0, v5, v1

    .line 121
    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f110188

    .line 126
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v0, v5, v1

    .line 125
    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f11019d

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/CharSequence;

    aput-object v0, v3, v1

    .line 130
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    invoke-virtual {v0, v1, p2}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Lcom/android/dialer/calllogutils/PhoneCallDetails;)V

    .line 81
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    invoke-direct {p0, p2}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getContactBadgeDescription(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    iget-object v1, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0, p2}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getNameOrNumber(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    .line 92
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v0, p2}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCallTypeOrLocation(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callTypeOrLocation:Ljava/lang/CharSequence;

    .line 95
    iget-object p2, p2, Lcom/android/dialer/calllogutils/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->updatePhoto()V

    return-void
.end method

.method public updatePhoneCallDetails(Lcom/android/dialer/calllogutils/PhoneCallDetails;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 67
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;->getCallLocationAndDate(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callLocationAndDate:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->getCallDescription(Lcom/android/dialer/calllogutils/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->callDescription:Ljava/lang/CharSequence;

    return-void
.end method
