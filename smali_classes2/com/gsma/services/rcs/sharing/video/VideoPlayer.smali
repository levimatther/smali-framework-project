.class public abstract Lcom/gsma/services/rcs/sharing/video/VideoPlayer;
.super Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;
.source "VideoPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.end method

.method public abstract getLocalRtpPort()I
.end method

.method public abstract getSupportedCodecs()[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.end method

.method public abstract setRemoteInfo(Lcom/gsma/services/rcs/sharing/video/VideoCodec;Ljava/lang/String;II)V
.end method
