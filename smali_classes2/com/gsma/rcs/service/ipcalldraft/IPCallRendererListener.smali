.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IPCallRendererListener;
.super Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;
.source "IPCallRendererListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRendererClosed()V
.end method

.method public abstract onRendererError(I)V
.end method

.method public abstract onRendererOpened()V
.end method

.method public abstract onRendererStarted()V
.end method

.method public abstract onRendererStopped()V
.end method
