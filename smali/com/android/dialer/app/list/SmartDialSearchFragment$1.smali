.class Lcom/android/dialer/app/list/SmartDialSearchFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartDialSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/SmartDialSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/SmartDialSearchFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$1;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SmartDialSearchFragment.onReceive"

    const-string v0, "smart dial update broadcast received"

    .line 73
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$1;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$000(Lcom/android/dialer/app/list/SmartDialSearchFragment;)V

    return-void
.end method
