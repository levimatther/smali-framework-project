.class Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
.super Ljava/lang/Object;
.source "VoicemailStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private configurationState:I

.field private dataChannelState:I

.field private isAirplaneMode:Z

.field private notificationChannelState:I

.field private phoneAccountComponentName:Ljava/lang/String;

.field private phoneAccountId:Ljava/lang/String;

.field private quotaOccupied:I

.field private quotaTotal:I

.field private settingsUri:Landroid/net/Uri;

.field private sourcePackage:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private voicemailAccessUri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->sourcePackage:Ljava/lang/String;

    const-string/jumbo v1, "vvm_type_omtp"

    .line 161
    iput-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->type:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->phoneAccountComponentName:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->phoneAccountId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 168
    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->configurationState:I

    .line 169
    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->dataChannelState:I

    .line 170
    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->notificationChannelState:I

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->quotaOccupied:I

    .line 173
    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->quotaTotal:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->sourcePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->phoneAccountComponentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->quotaTotal:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->isAirplaneMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->phoneAccountId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Landroid/net/Uri;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->settingsUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Landroid/net/Uri;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->voicemailAccessUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->configurationState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->dataChannelState:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->notificationChannelState:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->quotaOccupied:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/dialer/app/voicemail/error/VoicemailStatus;
    .locals 2

    .line 178
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;Lcom/android/dialer/app/voicemail/error/VoicemailStatus$1;)V

    return-object v0
.end method

.method public setAirplaneMode(Z)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->isAirplaneMode:Z

    return-object p0
.end method

.method public setConfigurationState(I)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->configurationState:I

    return-object p0
.end method

.method public setDataChannelState(I)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->dataChannelState:I

    return-object p0
.end method

.method public setNotificationChannelState(I)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 222
    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->notificationChannelState:I

    return-object p0
.end method

.method public setPhoneAccountComponentName(Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->phoneAccountComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneAccountId(Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->phoneAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public setQuotaOccupied(I)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 227
    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->quotaOccupied:I

    return-object p0
.end method

.method public setQuotaTotal(I)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 232
    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->quotaTotal:I

    return-object p0
.end method

.method public setSettingsUri(Landroid/net/Uri;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->settingsUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->sourcePackage:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setVoicemailAccessUri(Landroid/net/Uri;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->voicemailAccessUri:Landroid/net/Uri;

    return-object p0
.end method
