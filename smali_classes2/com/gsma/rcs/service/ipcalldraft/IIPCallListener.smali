.class public interface abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;
.super Ljava/lang/Object;
.source "IIPCallListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;,
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onIPCallStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
