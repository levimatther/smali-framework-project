.class Lcom/android/dialer/app/settings/SpeedDialListActivity$5;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/settings/SpeedDialListActivity;->showSelectAccountDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$5;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 528
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.phone"

    const-string v0, "com.android.phone.CallFeaturesSetting"

    .line 529
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    :try_start_0
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$5;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-virtual {p2, p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SpeedDial"

    const-string p2, "can not find activity deal with voice mail"

    .line 534
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
