.class final Lcom/android/operatorutils/CarrierConfigManagerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierConfigManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/operatorutils/CarrierConfigManagerEx;->updateCarrierData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 233
    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasReadPhoneStatePermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 234
    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->access$100(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
