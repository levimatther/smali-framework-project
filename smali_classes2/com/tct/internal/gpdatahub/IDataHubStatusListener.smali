.class public interface abstract Lcom/tct/internal/gpdatahub/IDataHubStatusListener;
.super Ljava/lang/Object;
.source "IDataHubStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;,
        Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDataHubStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDebugStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
