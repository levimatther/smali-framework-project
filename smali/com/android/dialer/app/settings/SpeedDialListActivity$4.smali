.class Lcom/android/dialer/app/settings/SpeedDialListActivity$4;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAddSpeedDialDialog(I)V
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

    .line 389
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 392
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$300(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$200(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    return-void

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$400(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    .line 397
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$4;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$200(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    return-void
.end method
