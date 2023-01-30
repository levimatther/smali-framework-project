.class public interface abstract Lcom/gsma/services/rcs/extension/IMultimediaTelephony;
.super Ljava/lang/Object;
.source "IMultimediaTelephony.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;,
        Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Default;
    }
.end annotation


# virtual methods
.method public abstract setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
