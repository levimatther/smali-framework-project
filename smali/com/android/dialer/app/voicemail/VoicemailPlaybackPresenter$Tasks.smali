.class public final enum Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;
.super Ljava/lang/Enum;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum CHECK_FOR_CONTENT:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum SEND_FETCH_REQUEST:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum SHARE_VOICEMAIL:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1015
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "CHECK_FOR_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 1016
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "CHECK_CONTENT_AFTER_CHANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 1017
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "SHARE_VOICEMAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->SHARE_VOICEMAIL:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 1018
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "SEND_FETCH_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->SEND_FETCH_REQUEST:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 1014
    sget-object v6, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->SHARE_VOICEMAIL:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->$VALUES:[Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1014
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;
    .locals 1

    .line 1014
    const-class v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-object p0
.end method

.method public static values()[Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;
    .locals 1

    .line 1014
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->$VALUES:[Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    invoke-virtual {v0}, [Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-object v0
.end method
