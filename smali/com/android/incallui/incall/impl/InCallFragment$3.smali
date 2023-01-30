.class Lcom/android/incallui/incall/impl/InCallFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/incall/impl/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/incall/impl/InCallFragment;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$3;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "state"

    const/4 v0, -0x1

    .line 356
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 358
    iget-object p2, p0, Lcom/android/incallui/incall/impl/InCallFragment$3;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p2}, Lcom/android/incallui/incall/impl/InCallFragment;->access$700(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/contactgrid/ContactGridManager;->setRemoteHold()V

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 361
    iget-object p1, p0, Lcom/android/incallui/incall/impl/InCallFragment$3;->this$0:Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-static {p1}, Lcom/android/incallui/incall/impl/InCallFragment;->access$700(Lcom/android/incallui/incall/impl/InCallFragment;)Lcom/android/incallui/contactgrid/ContactGridManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/contactgrid/ContactGridManager;->setResume()V

    :cond_1
    return-void
.end method
