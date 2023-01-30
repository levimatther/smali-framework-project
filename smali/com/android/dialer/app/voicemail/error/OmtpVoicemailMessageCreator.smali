.class public Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;
.super Ljava/lang/Object;
.source "OmtpVoicemailMessageCreator.java"


# static fields
.field private static final QUOTA_FULL_THRESHOLD:F = 0.99f

.field private static final QUOTA_NEAR_FULL_THRESHOLD:F = 0.9f

.field protected static final VOICEMAIL_PROMO_ALMOST_FULL_DISMISSED_KEY:Ljava/lang/String; = "voicemail_archive_almost_full_promo_was_dismissed"

.field protected static final VOICEMAIL_PROMO_DISMISSED_KEY:Ljava/lang/String; = "voicemail_archive_promo_was_dismissed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkQuota(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 2

    .line 144
    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaOccupied:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaTotal:I

    if-eq v0, v1, :cond_0

    .line 146
    invoke-static {p0, p1, p2}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->createInboxErrorMessage(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    sget-object p1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_QUOTA_CHECK_UNAVAILABLE:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p0, p1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 6

    .line 52
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;-><init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V

    .line 53
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->maybeCreateTosMessage()Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    if-nez v0, :cond_1

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->checkQuota(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_2

    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-nez p2, :cond_2

    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    if-nez p2, :cond_2

    .line 68
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110529

    .line 69
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110528

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 71
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-direct {p1, p2, v0, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    .line 74
    :cond_2
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    if-ne v2, p2, :cond_3

    .line 75
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->createNoSignalMessage(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object p0

    return-object p0

    .line 78
    :cond_3
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne v3, p2, :cond_4

    .line 79
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11052b

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f11052a

    .line 81
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 82
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 83
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    .line 86
    :cond_4
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    const v5, 0x7f11053a

    if-ne v2, p2, :cond_5

    .line 87
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    .line 88
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f110539

    .line 89
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 90
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 91
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    .line 94
    :cond_5
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v4, p2, :cond_6

    .line 95
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    .line 96
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f110538

    .line 97
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 98
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 99
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    .line 102
    :cond_6
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v0, p2, :cond_7

    .line 103
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11052d

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f11052c

    .line 105
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 106
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 107
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    .line 110
    :cond_7
    iget p2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v3, p2, :cond_8

    .line 111
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11052f

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f11052e

    .line 113
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 114
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 115
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_8
    const/4 p2, 0x5

    .line 118
    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne p2, v0, :cond_9

    .line 119
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f110547

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f110546

    .line 121
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 122
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 123
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_9
    const/4 p2, 0x6

    .line 126
    iget v0, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne p2, v0, :cond_a

    .line 127
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f110545

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f110544

    .line 129
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 130
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v5

    aput-object v5, v4, v1

    .line 131
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-direct {p2, v0, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    .line 137
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "OmtpVoicemailMessageCreator.create"

    invoke-static {p2, p0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createInboxErrorMessage(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 13

    .line 156
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaOccupied:I

    int-to-float v1, v1

    iget v3, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaTotal:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v3, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 166
    new-instance v6, Lcom/android/dialer/common/PerAccountSharedPreferences;

    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-direct {v6, p0, v5, v7}, Lcom/android/dialer/common/PerAccountSharedPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/content/SharedPreferences;)V

    .line 170
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v7

    .line 173
    invoke-static {v6, v1}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->isPromoForArchiveDismissed(Lcom/android/dialer/common/PerAccountSharedPreferences;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 174
    invoke-interface {v7, p0, v5}, Lcom/android/voicemail/VoicemailClient;->isVoicemailArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 175
    invoke-interface {v7, p0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailArchiveAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    .line 179
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 180
    invoke-interface {v1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 181
    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v2, 0x7f110533

    .line 182
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110532

    .line 183
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object v1

    .line 185
    :cond_3
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_ERROR_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 186
    invoke-interface {v1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 187
    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v2, 0x7f110537

    .line 188
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110536

    .line 189
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 200
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v3, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v1, v3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const v1, 0x7f110535

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f110534

    .line 202
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 203
    sget-object v4, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 204
    sget-object v8, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const-string/jumbo v9, "voicemail_archive_promo_was_dismissed"

    goto :goto_2

    .line 207
    :cond_5
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v3, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SHOWN_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v1, v3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const v1, 0x7f110531

    .line 208
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f110530

    .line 209
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 210
    sget-object v4, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_ARCHIVE_FROM_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 211
    sget-object v8, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISMISSED_VM_ALMOST_FULL_PROMO:Lcom/android/dialer/logging/DialerImpression$Type;

    const-string/jumbo v9, "voicemail_archive_almost_full_promo_was_dismissed"

    :goto_2
    move-object v10, v4

    move-object v11, v8

    move-object v12, v9

    move-object v8, v1

    move-object v9, v3

    move-object v0, p0

    move-object v1, v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    .line 215
    invoke-static/range {v0 .. v10}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->createVMQuotaPromo(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/voicemail/VoicemailClient;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object v0

    return-object v0
.end method

.method private static createNoSignalMessage(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 4

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 276
    iget v2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    const v3, 0x7f11053e

    if-ne v1, v2, :cond_0

    .line 277
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11053c

    .line 279
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-boolean v2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isAirplaneMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f11053b

    .line 283
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f11053d

    .line 285
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    :goto_0
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createSyncAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const v1, 0x7f110541

    .line 290
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-boolean v2, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isAirplaneMode:Z

    if-eqz v2, :cond_3

    const v2, 0x7f11053f

    .line 293
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const v2, 0x7f110540

    .line 296
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_1
    iget-boolean p1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isAirplaneMode:Z

    if-eqz p1, :cond_4

    .line 301
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createChangeAirplaneModeAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_4
    new-instance p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p0
.end method

.method private static createVMQuotaPromo(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/voicemail/VoicemailClient;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/logging/DialerImpression$Type;Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 8

    .line 251
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-object v2, p0

    move-object/from16 v3, p8

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    .line 254
    invoke-static/range {v2 .. v7}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createTurnArchiveOnAction(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/voicemail/VoicemailClient;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v2, p0

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 261
    invoke-static {p0, v5, p3, p5, v6}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createDismissTurnArchiveOnAction(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object v2, p6

    move-object v3, p7

    invoke-direct {v0, p6, p7, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object v0
.end method

.method private static isPromoForArchiveDismissed(Lcom/android/dialer/common/PerAccountSharedPreferences;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "voicemail_archive_promo_was_dismissed"

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p1, "voicemail_archive_almost_full_promo_was_dismissed"

    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z
    .locals 2

    .line 307
    iget v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 311
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-eqz v0, :cond_1

    return v1

    .line 315
    :cond_1
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
