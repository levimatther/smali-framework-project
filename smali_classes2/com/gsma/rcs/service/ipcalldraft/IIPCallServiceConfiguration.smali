.class public interface abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;
.super Ljava/lang/Object;
.source "IIPCallServiceConfiguration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration$Stub;,
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration$Default;
    }
.end annotation


# virtual methods
.method public abstract isVoiceCallBreakout()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
