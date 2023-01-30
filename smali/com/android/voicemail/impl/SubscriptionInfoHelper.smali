.class public Lcom/android/voicemail/impl/SubscriptionInfoHelper;
.super Ljava/lang/Object;
.source "SubscriptionInfoHelper.java"


# static fields
.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final NO_SUB_ID:I = -0x1

.field public static final SUB_ID_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

.field private static final SUB_LABEL_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mSlotIndex:I

.field private mSubId:I

.field private mSubLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    .line 49
    iput v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSlotIndex:I

    .line 55
    sput-object p1, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 61
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    .line 63
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    iput p1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSlotIndex:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    .line 49
    iput v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSlotIndex:I

    .line 72
    sput-object p1, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 78
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    .line 80
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    iput p1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSlotIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getConfiguringVoiceMailIntent()Landroid/content/Intent;
    .locals 3

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.CONFIGURE_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->hasSubId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget v1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    const-string v2, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    const-string v2, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSlotIndex:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    return v0
.end method

.method public hasSubId()Z
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
