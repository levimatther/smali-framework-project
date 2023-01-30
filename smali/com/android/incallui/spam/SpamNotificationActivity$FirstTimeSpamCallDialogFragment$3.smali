.class Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$3;
.super Ljava/lang/Object;
.source "SpamNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 380
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$3;->this$0:Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->dismiss()V

    return-void
.end method
