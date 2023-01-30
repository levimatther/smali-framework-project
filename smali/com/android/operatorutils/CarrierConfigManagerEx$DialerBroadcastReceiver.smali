.class Lcom/android/operatorutils/CarrierConfigManagerEx$DialerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierConfigManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/operatorutils/CarrierConfigManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialerBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/operatorutils/CarrierConfigManagerEx$1;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx$DialerBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 356
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->onCarrierConfigChanged()V

    .line 358
    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->access$100(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 361
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 362
    invoke-static {p1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->access$200(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
