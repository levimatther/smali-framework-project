.class public interface abstract Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager;
.super Ljava/lang/Object;
.source "IDataHubSystemInfoManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager$Stub;,
        Lcom/tct/internal/gpdatahub/IDataHubSystemInfoManager$Default;
    }
.end annotation


# virtual methods
.method public abstract startRecord()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRecord()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
