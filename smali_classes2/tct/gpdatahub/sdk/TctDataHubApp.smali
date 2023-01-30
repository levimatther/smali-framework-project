.class public Ltct/gpdatahub/sdk/TctDataHubApp;
.super Landroid/app/Application;
.source "TctDataHubApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    :try_start_0
    invoke-static {p0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/TctDataHubSdkManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TctDataHubApp"

    const-string v1, "TctDataHubApp init TctDataHubSdkManager failed"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
