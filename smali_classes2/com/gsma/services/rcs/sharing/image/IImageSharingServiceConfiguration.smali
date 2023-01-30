.class public interface abstract Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "IImageSharingServiceConfiguration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration$Stub;,
        Lcom/gsma/services/rcs/sharing/image/IImageSharingServiceConfiguration$Default;
    }
.end annotation


# virtual methods
.method public abstract getMaxSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
