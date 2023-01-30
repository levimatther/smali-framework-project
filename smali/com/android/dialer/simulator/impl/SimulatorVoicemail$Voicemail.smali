.class abstract Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;
.super Ljava/lang/Object;
.source "SimulatorVoicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorVoicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Voicemail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    .locals 1

    .line 123
    new-instance v0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;

    invoke-direct {v0}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method getAsContentValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 3

    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getDurationSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "source_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getIsRead()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "is_read"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "transcription"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method abstract getDurationSeconds()J
.end method

.method abstract getIsRead()Z
.end method

.method abstract getPhoneNumber()Ljava/lang/String;
.end method

.method abstract getTimeMillis()J
.end method

.method abstract getTranscription()Ljava/lang/String;
.end method
