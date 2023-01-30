.class public interface abstract Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "IVideoSharingServiceConfiguration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration$Stub;,
        Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration$Default;
    }
.end annotation


# virtual methods
.method public abstract getMaxTime()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
