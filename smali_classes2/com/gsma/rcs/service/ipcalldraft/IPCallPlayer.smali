.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;
.super Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;
.source "IPCallPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer$Error;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract close()V
.end method

.method public abstract getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
.end method

.method public getEventListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public abstract getLocalAudioRtpPort()I
.end method

.method public abstract getLocalVideoRtpPort()I
.end method

.method public abstract getSupportedAudioCodecs()[Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
.end method

.method public abstract getSupportedVideoCodecs()[Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
.end method

.method public abstract getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
.end method

.method public abstract open(Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;Ljava/lang/String;II)V
.end method

.method public removeAllEventListeners()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayer;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
