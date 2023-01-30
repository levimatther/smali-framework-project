.class synthetic Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$1;
.super Ljava/lang/Object;
.source "VoicemailStatusCorruptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$dialer$app$voicemail$error$VoicemailStatusCorruptionHandler$Source:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 93
    invoke-static {}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->values()[Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$1;->$SwitchMap$com$android$dialer$app$voicemail$error$VoicemailStatusCorruptionHandler$Source:[I

    :try_start_0
    sget-object v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Activity:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$1;->$SwitchMap$com$android$dialer$app$voicemail$error$VoicemailStatusCorruptionHandler$Source:[I

    sget-object v1, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->Notification:Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
