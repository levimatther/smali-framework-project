.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IPCallPlayerListener;
.super Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener$Stub;
.source "IPCallPlayerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPlayerClosed()V
.end method

.method public abstract onPlayerError(I)V
.end method

.method public abstract onPlayerOpened()V
.end method

.method public abstract onPlayerStarted()V
.end method

.method public abstract onPlayerStopped()V
.end method
