.class Lcom/android/dialer/app/settings/SpeedDialListActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/settings/SpeedDialListActivity;->onResume()V
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

    .line 304
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$1;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$1;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 309
    iget-object v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$1;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$002(Lcom/android/dialer/app/settings/SpeedDialListActivity;Z)Z

    return-void
.end method
