.class public interface abstract Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
.super Ljava/lang/Object;
.source "IMultimediaStreamingSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;,
        Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
