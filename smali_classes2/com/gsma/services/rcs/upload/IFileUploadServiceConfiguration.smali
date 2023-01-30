.class public interface abstract Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;
.super Ljava/lang/Object;
.source "IFileUploadServiceConfiguration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration$Stub;,
        Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration$Default;
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
