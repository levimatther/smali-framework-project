.class public Ltct/gpdatahub/sdk/handler/HandlerFactory;
.super Ljava/lang/Object;
.source "HandlerFactory.java"


# instance fields
.field private mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

.field private mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    .line 12
    iput-object v0, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    return-void
.end method


# virtual methods
.method public getMobileEventHandler(Landroid/content/Context;)Ltct/gpdatahub/sdk/handler/MobileEventHandler;
    .locals 1

    .line 22
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    .line 25
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    return-object p1
.end method

.method public getUploadHandler(Landroid/content/Context;)Ltct/gpdatahub/sdk/handler/UploadHandler;
    .locals 1

    .line 15
    iget-object v0, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ltct/gpdatahub/sdk/handler/UploadHandler;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/handler/UploadHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    .line 18
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/handler/HandlerFactory;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    return-object p1
.end method
