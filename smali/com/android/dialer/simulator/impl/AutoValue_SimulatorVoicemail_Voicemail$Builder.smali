.class final Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;
.super Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.source "AutoValue_SimulatorVoicemail_Voicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private durationSeconds:Ljava/lang/Long;

.field private isRead:Ljava/lang/Boolean;

.field private phoneNumber:Ljava/lang/String;

.field private timeMillis:Ljava/lang/Long;

.field private transcription:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;
    .locals 11

    .line 144
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->phoneNumber:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->transcription:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transcription"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->durationSeconds:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " durationSeconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->timeMillis:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->isRead:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isRead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    new-instance v0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;

    iget-object v3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->phoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->transcription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->durationSeconds:Ljava/lang/Long;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->timeMillis:Ljava/lang/Long;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->isRead:Ljava/lang/Boolean;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail;-><init>(Ljava/lang/String;Ljava/lang/String;JJZLcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$1;)V

    return-object v0

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    .locals 0

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->durationSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    .locals 0

    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->isRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->phoneNumber:Ljava/lang/String;

    return-object p0

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null phoneNumber"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setTimeMillis(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    .locals 0

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->timeMillis:Ljava/lang/Long;

    return-object p0
.end method

.method setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorVoicemail_Voicemail$Builder;->transcription:Ljava/lang/String;

    return-object p0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transcription"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
