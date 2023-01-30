.class public Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocolFactory;
.super Ljava/lang/Object;
.source "VisualVoicemailProtocolFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VvmProtocolFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/voicemail/impl/protocol/VisualVoicemailProtocol;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x582a47c3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x5824f553

    if-eq v1, v2, :cond_2

    const v2, -0x5821a607

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "vvm_type_vvm3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "vvm_type_omtp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "vvm_type_cvvm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected visual voicemail type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VvmProtocolFactory"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 40
    :cond_5
    new-instance p0, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;

    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/Vvm3Protocol;-><init>()V

    return-object p0

    .line 38
    :cond_6
    new-instance p0, Lcom/android/voicemail/impl/protocol/CvvmProtocol;

    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/CvvmProtocol;-><init>()V

    return-object p0

    .line 36
    :cond_7
    new-instance p0, Lcom/android/voicemail/impl/protocol/OmtpProtocol;

    invoke-direct {p0}, Lcom/android/voicemail/impl/protocol/OmtpProtocol;-><init>()V

    return-object p0
.end method
