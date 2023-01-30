.class abstract Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.super Ljava/lang/Object;
.source "SimulatorVoicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract build()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;
.end method

.method abstract setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.end method

.method abstract setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.end method

.method abstract setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.end method

.method abstract setTimeMillis(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.end method

.method abstract setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;
.end method
