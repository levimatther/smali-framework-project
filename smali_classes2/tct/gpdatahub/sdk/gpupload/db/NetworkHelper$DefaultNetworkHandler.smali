.class Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;
.super Landroid/os/Handler;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultNetworkHandler"
.end annotation


# instance fields
.field callback:Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;


# direct methods
.method public constructor <init>(Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->callback:Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 116
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$DefaultNetworkHandler;->callback:Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;->onResult(Landroid/os/Message;)V

    return-void
.end method
