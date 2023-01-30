.class Lcom/android/incallui/spam/SpamNotificationActivity$1;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/spam/SpamNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/spam/SpamNotificationActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$1;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$1;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    invoke-virtual {p1}, Lcom/android/incallui/spam/SpamNotificationActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$1;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity;

    invoke-virtual {p1}, Lcom/android/incallui/spam/SpamNotificationActivity;->finish()V

    :cond_0
    return-void
.end method
