.class public Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;
.super Ljava/lang/Object;
.source "VoicemailTosMessageCreator.java"


# static fields
.field public static final CURRENT_DIALER_TOS_VERSION:I = 0x1

.field public static final CURRENT_VVM3_TOS_VERSION:I = 0x2

.field public static final DIALER_TOS_VERSION_ACCEPTED_KEY:Ljava/lang/String; = "dialer_tos_version_accepted"

.field private static final ISO639_SPANISH:Ljava/lang/String; = "es"

.field public static final VVM3_TOS_VERSION_ACCEPTED_KEY:Ljava/lang/String; = "vvm3_tos_version_accepted"


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

.field private final statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    .line 73
    iput-object p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    .line 74
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->logTosDeclinedImpression()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->showDeclineTosDialog(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->recordTosAcceptance()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->logTosAcceptedImpression()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getAcceptText()Ljava/lang/CharSequence;
    .locals 2

    .line 280
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->useSpanish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104d5

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104d4

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->useSpanish()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101db

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101da

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getDeclineText()Ljava/lang/CharSequence;
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->useSpanish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104db

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104d8

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->useSpanish()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101df

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101de

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getDialerTos()Ljava/lang/CharSequence;
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVoicemailTranscriptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->useSpanish()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101d9

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101d8

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getTosDeclinedDialogDowngradeId()I
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1104d6

    goto :goto_0

    :cond_0
    const v0, 0x7f1101dc

    :goto_0
    return v0
.end method

.method private getTosDeclinedDialogMessageId()I
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1104d7

    goto :goto_0

    :cond_0
    const v0, 0x7f1101dd

    :goto_0
    return v0
.end method

.method private getTosImageId()Ljava/lang/Integer;
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f080251

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getTosMessage()Ljava/lang/CharSequence;
    .locals 7

    .line 310
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getVvm3Tos()Ljava/lang/CharSequence;

    move-result-object v0

    .line 314
    iget-object v3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v4, 0x7f1104dc

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getDialerTos()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    .line 315
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 318
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v4, v5, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v4

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v3, 0x7f1101e0

    new-array v4, v1, [Ljava/lang/Object;

    .line 324
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getDialerTos()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v3, v4, v2, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3
.end method

.method private getTosTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 304
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104dd

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1101e1

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getVvm3Tos()Ljava/lang/CharSequence;
    .locals 2

    .line 264
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->useSpanish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104d3

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const v1, 0x7f1104d2

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private hasAcceptedTos()Z
    .locals 4

    .line 220
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "vvm3_tos_version_accepted"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "dialer_tos_version_accepted"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private isVoicemailTranscriptionEnabled()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "voicemail_transcription_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVvm3()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    const-string/jumbo v1, "vvm_type_vvm3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private logTosAcceptedImpression()V
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_ACCEPTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :goto_0
    return-void
.end method

.method private logTosCreatedImpression()V
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :goto_0
    return-void
.end method

.method private logTosDeclinedImpression()V
    .locals 2

    .line 247
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_V2_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 249
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DIALER_TOS_DECLINE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :goto_0
    return-void
.end method

.method private recordTosAcceptance()V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "vvm3_tos_version_accepted"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->preferences:Landroid/content/SharedPreferences;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "dialer_tos_version_accepted"

    .line 233
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private shouldShowTos()Z
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "VoicemailTosMessageCreator.shouldShowTos"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "showing TOS for verizon"

    .line 125
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVoicemailTranscriptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "showing TOS for Google transcription users"

    .line 130
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return v3
.end method

.method private showDeclineTosDialog(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    .line 143
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->isVvm3()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, -0x64

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    iget v2, v2, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    if-ne v0, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VoicemailTosMessageCreator.showDeclineTosDialog"

    const-string v1, "PIN_NOT_SET, showing set PIN dialog"

    .line 144
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->showSetPinBeforeDeclineDialog()V

    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing decline ToS dialog, status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VoicemailTosMessageCreator.showDeclineVerizonTosDialog"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getTosDeclinedDialogMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getTosDeclinedDialogDowngradeId()I

    move-result v2

    new-instance v3, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)V

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 170
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$4;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 179
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSetPinBeforeDeclineDialog()V
    .locals 3

    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1104d9

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 186
    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$5;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    const v2, 0x7f1104da

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$6;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private useSpanish()Z
    .locals 3

    .line 216
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method maybeCreateTosMessage()Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;
    .locals 8

    .line 80
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->hasAcceptedTos()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->shouldShowTos()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->logTosCreatedImpression()V

    .line 90
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;

    .line 91
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getTosTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 92
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getTosMessage()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 94
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getDeclineText()Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;

    invoke-direct {v7, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$1;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    invoke-direct {v5, v6, v7}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;

    .line 108
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getAcceptText()Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;

    invoke-direct {v6, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$2;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Z)V

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;)V

    .line 119
    invoke-virtual {v0, v7}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessage;->setModal(Z)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object v0

    .line 120
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->getTosImageId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->setImageResourceId(Ljava/lang/Integer;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;

    move-result-object v0

    return-object v0
.end method
