.class public Lcom/android/voicemail/impl/CarrierVvmPackageInstalledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierVvmPackageInstalledReceiver.java"


# static fields
.field private static final ACTION_CARRIER_VVM_PACKAGE_INSTALLED:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_VVM_PACKAGE_INSTALLED"

.field private static final ACTION_CARRIER_VVM_PACKAGE_UNINSTALLED:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_VVM_PACKAGE_UNINSTALLED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 37
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3b95edf3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x27cdfd2c

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.internal.telephony.CARRIER_VVM_PACKAGE_UNINSTALLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_1

    :cond_1
    const-string v1, "com.android.internal.telephony.CARRIER_VVM_PACKAGE_INSTALLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-string v1, "CarrierVvmPackageInstalledReceiver.onReceive"

    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    goto :goto_2

    .line 44
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package uninstalled: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmPackageInstallHandler;->handlePackageUninstalled(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package installed: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmPackageInstallHandler;->handlePackageInstalled(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
