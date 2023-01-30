.class public Lcom/android/dialer/app/DialpadActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialpadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/DialpadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialpadActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/DialpadActivity;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity$MyReceiver;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.dialer.finish"

    .line 361
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity$MyReceiver;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/DialpadActivity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method
