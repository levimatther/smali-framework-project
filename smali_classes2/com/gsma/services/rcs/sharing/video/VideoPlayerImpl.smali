.class public Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;
.super Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;
.source "VideoPlayerImpl.java"


# instance fields
.field private final mVideoPlayer:Lcom/gsma/services/rcs/sharing/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;->mVideoPlayer:Lcom/gsma/services/rcs/sharing/video/VideoPlayer;

    return-void
.end method


# virtual methods
.method public getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;->mVideoPlayer:Lcom/gsma/services/rcs/sharing/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoPlayer;->getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object v0

    return-object v0
.end method

.method public getLocalRtpPort()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;->mVideoPlayer:Lcom/gsma/services/rcs/sharing/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoPlayer;->getLocalRtpPort()I

    move-result v0

    return v0
.end method

.method public getSupportedCodecs()[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;->mVideoPlayer:Lcom/gsma/services/rcs/sharing/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoPlayer;->getSupportedCodecs()[Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object v0

    return-object v0
.end method

.method public setRemoteInfo(Lcom/gsma/services/rcs/sharing/video/VideoCodec;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoPlayerImpl;->mVideoPlayer:Lcom/gsma/services/rcs/sharing/video/VideoPlayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/video/VideoPlayer;->setRemoteInfo(Lcom/gsma/services/rcs/sharing/video/VideoCodec;Ljava/lang/String;II)V

    return-void
.end method
