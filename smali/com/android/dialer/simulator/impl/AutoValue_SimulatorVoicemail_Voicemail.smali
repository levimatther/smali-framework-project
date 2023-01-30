.class final Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;
.super Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;
.source "AutoValue_SimulatorVoicemail_Voicemail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;
    }
.end annotation


# instance fields
.field private final durationSeconds:J

.field private final isRead:Z

.field private final phoneNumber:Ljava/lang/String;

.field private final timeMillis:J

.field private final transcription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->phoneNumber:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->transcription:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->durationSeconds:J

    .line 28
    iput-wide p5, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->timeMillis:J

    .line 29
    iput-boolean p7, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->isRead:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZLcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p7}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 76
    check-cast p1, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;

    .line 77
    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->transcription:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getTranscription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->durationSeconds:J

    .line 79
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getDurationSeconds()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->timeMillis:J

    .line 80
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->isRead:Z

    .line 81
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getIsRead()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getDurationSeconds()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->durationSeconds:J

    return-wide v0
.end method

.method getIsRead()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->isRead:Z

    return v0
.end method

.method getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method getTimeMillis()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->timeMillis:J

    return-wide v0
.end method

.method getTranscription()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->transcription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 90
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 92
    iget-object v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->transcription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 94
    iget-wide v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->durationSeconds:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 96
    iget-wide v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->timeMillis:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 98
    iget-boolean v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->isRead:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voicemail{phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transcription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->transcription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->durationSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->timeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;->isRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
