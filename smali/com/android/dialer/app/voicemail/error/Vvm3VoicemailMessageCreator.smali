.class public Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;
.super Ljava/lang/Object;
.source "Vvm3VoicemailMessageCreator.java"


# static fields
.field public static final IMAP_ERROR:I = -0x270f

.field public static final IMAP_GETQUOTA_ERROR:I = -0x270d

.field public static final IMAP_SELECT_ERROR:I = -0x2705

.field public static final INVALID_PASSWORD:I = -0x2709

.field public static final MAILBOX_NOT_INITIALIZED:I = -0x270a

.field public static final PIN_NOT_SET:I = -0x64

.field public static final SERVICE_NOT_ACTIVATED:I = -0x270c

.field public static final SERVICE_NOT_PROVISIONED:I = -0x270b

.field public static final SPG_DNS_FAILURE:I = -0x232b

.field public static final SPG_NO_CELLULAR:I = -0x232e

.field public static final SPG_URL_NOT_FOUND:I = -0x12d

.field public static final STATUS_SMS_TIMEOUT:I = -0x2331

.field public static final SUBSCRIBER_BLOCKED:I = -0x2706

.field public static final SUBSCRIBER_UNKNOWN:I = -0x63

.field public static final UNKNOWN_DEVICE:I = -0x2708

.field public static final UNKNOWN_USER:I = -0x2707

.field public static final USER_BLOCKED:I = -0x270e

.field public static final VMG_COMMUNICATION_ERROR:I = -0x67

.field public static final VMG_DB_ERROR:I = -0x66

.field public static final VMG_DNS_FAILURE:I = -0x232a

.field public static final VMG_INTERNAL_ERROR:I = -0x65

.field public static final VMG_NO_CELLULAR:I = -0x232d

.field public static final VMG_TIMEOUT:I = -0x2330

.field public static final VMG_UNKNOWN_ERROR:I = -0x1

.field public static final VMS_DNS_FAILURE:I = -0x2329

.field public static final VMS_NO_CELLULAR:I = -0x232c

.field public static final VMS_TIMEOUT:I = -0x232f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 5

    .line 82
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;-><init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V

    .line 83
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->maybeCreateTosMessage()Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, -0x2329

    .line 88
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 89
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f1105a1

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1105a0

    .line 91
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 92
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 93
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_1
    const/16 v0, -0x232a

    .line 96
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_2

    .line 97
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11059b

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11059a

    .line 99
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 100
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 101
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_2
    const/16 v0, -0x232b

    .line 104
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_3

    .line 105
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11058b

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11058a

    .line 107
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 108
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 109
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_3
    const/16 v0, -0x232c

    .line 112
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v0, v1, :cond_4

    .line 113
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f1105a3

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1105a2

    .line 115
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 116
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 117
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_4
    const/16 v0, -0x232d

    .line 120
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_5

    .line 121
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11059d

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11059c

    .line 123
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 124
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 125
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_5
    const/16 v0, -0x232e

    .line 128
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_6

    .line 129
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11058d

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11058c

    .line 131
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 132
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 133
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_6
    const/16 v0, -0x232f

    .line 136
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v0, v1, :cond_7

    .line 137
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f1105a5

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1105a4

    .line 139
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 140
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 141
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_7
    const/16 v0, -0x2330

    .line 144
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_8

    .line 145
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11059f

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11059e

    .line 147
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 148
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 149
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_8
    const/16 v0, -0x2331

    .line 152
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    if-ne v0, v1, :cond_9

    .line 153
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f11058f

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11058e

    .line 155
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 156
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 157
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_9
    const/16 v0, -0x2706

    .line 160
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_a

    .line 161
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f110591

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110590

    .line 163
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 164
    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createRetryAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p1

    aput-object p1, v2, v4

    .line 165
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    :cond_a
    const/16 v0, -0x2707

    .line 168
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_b

    .line 169
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110597

    .line 170
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110596

    .line 171
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 172
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 173
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_b
    const/16 v0, -0x2708

    .line 176
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_c

    .line 177
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110595

    .line 178
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110594

    .line 179
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 180
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 181
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_c
    const/16 v0, -0x2709

    .line 184
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_d

    .line 185
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110583

    .line 186
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110582

    .line 187
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 188
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 189
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_d
    const/16 v0, -0x270a

    .line 192
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_e

    .line 193
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110585

    .line 194
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110584

    .line 195
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v3, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 196
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_e
    const/16 v0, -0x270b

    .line 199
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_f

    .line 200
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110589

    .line 201
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110588

    .line 202
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v3, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 203
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_f
    const/16 v0, -0x270c

    .line 206
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_10

    .line 207
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110587

    .line 208
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110586

    .line 209
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v3, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 210
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_10
    const/16 v0, -0x270e

    .line 213
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_11

    .line 214
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110599

    .line 215
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110598

    .line 216
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v3, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 217
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_11
    const/16 v0, -0x63

    .line 220
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_12

    .line 221
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110593

    .line 222
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110592

    .line 223
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 224
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 225
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_12
    const/16 v0, -0x270d

    .line 228
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v0, v1, :cond_13

    .line 229
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f11057f

    .line 230
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f11057e

    .line 231
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 232
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 233
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_13
    const/16 v0, -0x2705

    .line 236
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v0, v1, :cond_14

    .line 237
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f110581

    .line 238
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f110580

    .line 239
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 240
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 241
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_14
    const/16 v0, -0x270f

    .line 244
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-ne v0, v1, :cond_15

    .line 245
    new-instance p1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const p2, 0x7f11057d

    .line 246
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f11057c

    .line 247
    invoke-static {p0, v0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 248
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createCallVoicemailAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object v2

    aput-object v2, v1, v4

    .line 249
    invoke-static {p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-direct {p1, p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p1

    :cond_15
    const/16 v0, -0x64

    .line 252
    iget v1, p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v1, :cond_16

    .line 253
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p2, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 254
    new-instance p2, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    const v0, 0x7f110543

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110542

    .line 256
    invoke-static {p0, v1}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator;->getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v2, v3, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 257
    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createSetPinAction(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-direct {p2, v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    return-object p2

    .line 260
    :cond_16
    invoke-static {p0, p1, p2}, Lcom/android/dialer/app/voicemail/error/OmtpVoicemailMessageCreator;->create(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object p0

    return-object p0
.end method

.method private static createCallCustomerSupportAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
    .locals 3

    .line 274
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const v1, 0x7f110511

    .line 275
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/app/voicemail/error/Vvm3VoicemailMessageCreator$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static getCustomerSupportString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104d0

    .line 269
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-static {v0, p1, p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z
    .locals 2

    .line 293
    iget v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 297
    :cond_0
    iget v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    if-eqz v0, :cond_1

    return v1

    .line 301
    :cond_1
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    const/16 v0, -0x64

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
