.class public interface abstract Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
.super Ljava/lang/Object;
.source "IMultimediaSessionServiceConfiguration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;,
        Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Default;
    }
.end annotation


# virtual methods
.method public abstract getMessageMaxLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMessagingSessionInactivityTimeout(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isServiceActivated(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
